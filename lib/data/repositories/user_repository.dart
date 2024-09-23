import 'dart:collection';
import 'dart:developer';
import 'dart:math' as m;

import 'package:auk_utils/auk_utils.dart';
import 'package:dio/dio.dart';

import '../../utils/api_utils.dart';
import '../data_sources/ibo_remote_datasource.dart';
import '../data_sources/isar_db.dart';
import '../models/ibo/playlist/m3u_playlist.dart';
import '../models/ibo/settings/data_event.dart';
import '../models/ibo/settings/language.dart';

class UserRepository {
  static final Queue<String> _domains = Queue();
  static late final String _deviceId;
  static late final String pinCode;
  static late final String _deviceKey;
  static late final String _tmdbApiKey;
  static final locales = {};
  static String _generateRandomMac() {
    final random = m.Random();
    final macBytes = List.generate(6, (_) => random.nextInt(256));
    return macBytes
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join(':');
  }

  static bool _isValidMacAddress(String macAddress) {
    // Regular expression for a valid MAC address
    RegExp macRegex = RegExp(
      r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$',
      caseSensitive: false,
      multiLine: false,
    );

    // Check if the provided string matches the MAC address format
    return macRegex.hasMatch(macAddress);
  }

  static Future<String> _generateInstallationId() async {
    late String macAddress = '';
    try {
      macAddress = await AukUtils().getMacAddress() ?? '';
      if (!_isValidMacAddress(macAddress)) throw Exception();
    } catch (e) {
      macAddress = _generateRandomMac();
    }
    return macAddress;
  }

  static Future<void> _initDeviceId() async {
    final x = (await IsarDB.instance.getSettings()).deviceId;
    if (x == null) {
      _deviceId = await _generateInstallationId();
      IsarDB.instance.updateSettings(
        updateFunction: (settings) => settings..deviceId = _deviceId,
      );
    } else {
      _deviceId = x;
    }
  }

  static String get deviceId => _deviceId;
  static Map<String, int>? _currentChannelIndecies;
  static Map<String, int?>? _currentCategoryIndecies;
  static Future<int?> get currentChannelIndex async {
    _currentChannelIndecies =
        IsarDB.instance.eagerSettings().currentChannelIndex;
    return _currentChannelIndecies![
        (await selectedPlaylist)?.isarId.toString()];
  }

  static Future<int?> get currentCategoryId async {
    _currentCategoryIndecies =
        IsarDB.instance.eagerSettings().currentLiveCategoryId;
    return _currentCategoryIndecies![
        (await selectedPlaylist)?.isarId.toString()];
  }

  static setCurrentChannelIndex(int streamId) {
    IsarDB.instance.updateSettings(
      updateFunction: (userSettings) async => userSettings
        ..currentChannelIndex[(await selectedPlaylist)!.isarId.toString()] =
            streamId,
      callback: () {
        IsarDB.instance.notifyCurrentChannel();
      },
    );
  }

  static setCurrentCategory(int? categoryId) {
    IsarDB.instance.updateSettings(
      updateFunction: (userSettings) async => userSettings
        ..currentLiveCategoryId[(await selectedPlaylist)!.isarId.toString()] =
            categoryId ?? -2,
      callback: () {
        IsarDB.instance.notifyCurrentLiveCategory();
      },
    );
  }

  static Stream<DataEvent?> get currentChannelNotifier =>
      IsarDB.instance.currentChannelNotifier;
  static Stream<DataEvent?> get currentLiveCategoryNotifier =>
      IsarDB.instance.currentLiveCategoryNotifier;
  static Future<Map> _getDomains() async {
    final resData = await IboRemoteDatasource.getDomains(deviceId);
    _domains.clear();
    _domains.addAll((resData['domains'] as List).cast<String>());
    return resData;
  }

  static Future<void> initialize() async {
    await _initDeviceId();
    await _getDomains();

    Response? res2;
    while (true) {
      final domain = _domains.first;
      _domains.removeFirst();
      _domains.add(domain);
      res2 = await IboRemoteDatasource.getIboData(domain, deviceId);
      if (res2 != null) break;
    }

    final data = ApiUtils.decryptResponse(res2.data['data']);
    final translations = (data['languages'] as List)
        .cast<Map<String, dynamic>>()
        .map(Language.fromJson)
        .toList();
    locales.clear();
    locales.addAll(
      translations.asMap().map((_, l) => MapEntry(l.code, l.name)),
    );
    IsarDB.instance.storeTranslations(translations);

    final p = data['parent_pin'];
    pinCode = (p ?? '') == '' ? '0000' : p;
    final playlists = (data['urls'] as List)
        .cast<Map<String, dynamic>>()
        .map(M3UPlaylist.fromJson)
        .toList();
    IsarDB.instance.storePlaylists(playlists);
    _deviceKey = data['device_key'].toString();
    _tmdbApiKey = data['tmdb_api_key'];
    log('Intialized user settings');
  }

  static Future<void> setSelectedPlaylist(M3UPlaylist playlist) async {
    _selectedPlaylist = playlist;
    IsarDB.instance.updateSettings(
      updateFunction: (userSettings) {
        return userSettings..selectedPlaylist.value = playlist;
      },
    );
  }

  static M3UPlaylist? _selectedPlaylist;
  static Future<M3UPlaylist?> get selectedPlaylist async {
    _selectedPlaylist ??= await _getSelectedPlaylist();
    return _selectedPlaylist;
  }

  static Future<M3UPlaylist?> _getSelectedPlaylist() async {
    final p = (await IsarDB.instance.getSettings()).selectedPlaylist.value;
    M3UPlaylist? p2;
    if (p == null) {
      p2 = (await IsarDB.instance.getPlaylists()).firstOrNull;
      IsarDB.instance.updateSettings(
          updateFunction: (settings) async =>
              settings..selectedPlaylist.value = p2);
    }
    return p ?? p2;
  }

  static Future<Map<String, dynamic>> loadTranslation(_, String locale) async =>
      (await IsarDB.instance.getLanguage(locale))?.words ?? {};

  static String get tmdbApiKey => _tmdbApiKey;
  static String get deviceKey => _deviceKey;
  static Future<List<M3UPlaylist>> getPlaylists() async =>
      await IsarDB.instance.getPlaylists();
}
