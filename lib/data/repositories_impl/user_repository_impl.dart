import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../domain/entities/settings/device_id.dart';
import '../../domain/entities/settings/ibo_info.dart';
import '../../domain/entities/settings/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_sources/ibo_remote/ibo_remote_datasource.dart';
import '../dtos/ibo/ibo_info/ibo_info.dart';
import '../mappers/ibo_info/ibo_info.dart';

class UserRepositoryImpl implements UserRepository {
  final _getIt = GetIt.instance;
  late final _logger = _getIt.get<Logger>();
  late final _iboDataSource = _getIt.get<IboRemoteDatasource>();
  late final _iboInfoMapper = _getIt.get<IboInfoMapper>();
  @override
  Future<User> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<IboInfo> login(DeviceId deviceId) async {
    final domains = await _iboDataSource.getDomains(deviceId: deviceId);
    // Create a list of futures for all API calls
    List<Future<IboInfoJsonModel>> futures = domains
        .map(
          (domain) => _iboDataSource.getUserData(
            deviceId: deviceId,
            domain: domain,
          ),
        )
        .toList();
    late final IboInfo iboInfo;
    try {
      final iboInfoJsonModel = await Future.any(futures);
      iboInfo = _iboInfoMapper.toEntity(iboInfoJsonModel);
      return iboInfo;
    } catch (e) {
      _logger.e('login failed $e');
      return Future.error(e);
    }
  }
}
//   // static final Queue<String> _domains = Queue();
//   // static late final String _deviceId;
//   // static late final String pinCode;
//   // static late final String _deviceKey;
//   // static late final String _tmdbApiKey;
//   // static final locales = {};

//   // static String get deviceId => _deviceId;
//   // static Map<String, int>? _currentChannelIndecies;
//   // static Map<String, int?>? _currentCategoryIndecies;
//   // static Future<int?> get currentChannelIndex async {
//   //   _currentChannelIndecies =
//   //       IsarDB.instance.eagerSettings().currentChannelIndex;
//   //   return _currentChannelIndecies![
//   //       (await selectedPlaylist)?.isarId.toString()];
//   // }

//   // static Future<int?> get currentCategoryId async {
//   //   _currentCategoryIndecies =
//   //       IsarDB.instance.eagerSettings().currentLiveCategoryId;
//   //   return _currentCategoryIndecies![
//   //       (await selectedPlaylist)?.isarId.toString()];
//   // }

//   // static setCurrentChannelIndex(int streamId) {
//   //   IsarDB.instance.updateSettings(
//   //     updateFunction: (userSettings) async => userSettings
//   //       ..currentChannelIndex[(await selectedPlaylist)!.isarId.toString()] =
//   //           streamId,
//   //     callback: () {
//   //       IsarDB.instance.notifyCurrentChannel();
//   //     },
//   //   );
//   // }

//   // static setCurrentCategory(int? categoryId) {
//   //   IsarDB.instance.updateSettings(
//   //     updateFunction: (userSettings) async => userSettings
//   //       ..currentLiveCategoryId[(await selectedPlaylist)!.isarId.toString()] =
//   //           categoryId ?? -2,
//   //     callback: () {
//   //       IsarDB.instance.notifyCurrentLiveCategory();
//   //     },
//   //   );
//   // }

//   // static Stream<DataEvent?> get currentChannelNotifier =>
//   //     IsarDB.instance.currentChannelNotifier;
//   // static Stream<DataEvent?> get currentLiveCategoryNotifier =>
//   //     IsarDB.instance.currentLiveCategoryNotifier;
//   static Future<Map> _getDomains(DeviceId deviceId) async {
//     final resData = await IboRemoteDatasource.getDomains(deviceId);
//     _domains.clear();
//     _domains.addAll((resData['domains'] as List).cast<String>());
//     return resData;
//   }

//   static Future<void> initialize() async {
//     await _initDeviceId();
//     await _getDomains();

//     Response? res2;
//     while (true) {
//       final domain = _domains.first;
//       _domains.removeFirst();
//       _domains.add(domain);
//       res2 = await IboRemoteDatasource.getIboData(domain, deviceId);
//       if (res2 != null) break;
//     }

//     final data = ApiUtils.decryptResponse(res2.data['data']);
//     final translations = (data['languages'] as List)
//         .cast<Map<String, dynamic>>()
//         .map(Language.fromJson)
//         .toList();
//     locales.clear();
//     locales.addAll(
//       translations.asMap().map((_, l) => MapEntry(l.code, l.name)),
//     );
//     IsarDB.instance.storeTranslations(translations);

//     final p = data['parent_pin'];
//     pinCode = (p ?? '') == '' ? '0000' : p;
//     final playlists = (data['urls'] as List)
//         .cast<Map<String, dynamic>>()
//         .map(M3uPlaylistIsarModel.fromJson)
//         .toList();
//     IsarDB.instance.storePlaylists(playlists);
//     _deviceKey = data['device_key'].toString();
//     _tmdbApiKey = data['tmdb_api_key'];
//     log('Intialized user settings');
//   }

//   static Future<void> setSelectedPlaylist(M3uPlaylistIsarModel playlist) async {
//     _selectedPlaylist = playlist;
//     IsarDB.instance.updateSettings(
//       updateFunction: (userSettings) {
//         return userSettings..selectedPlaylist.value = playlist;
//       },
//     );
//   }

//   static M3uPlaylistIsarModel? _selectedPlaylist;
//   static Future<M3uPlaylistIsarModel?> get selectedPlaylist async {
//     _selectedPlaylist ??= await _getSelectedPlaylist();
//     return _selectedPlaylist;
//   }

//   static Future<M3uPlaylistIsarModel?> _getSelectedPlaylist() async {
//     final p = (await IsarDB.instance.getSettings()).selectedPlaylist.value;
//     M3uPlaylistIsarModel? p2;
//     if (p == null) {
//       p2 = (await IsarDB.instance.getPlaylists()).firstOrNull;
//       IsarDB.instance.updateSettings(
//           updateFunction: (settings) async =>
//               settings..selectedPlaylist.value = p2);
//     }
//     return p ?? p2;
//   }

//   static Future<Map<String, dynamic>> loadTranslation(_, String locale) async =>
//       (await IsarDB.instance.getLanguage(locale))?.words ?? {};

//   static String get tmdbApiKey => _tmdbApiKey;
//   static String get deviceKey => _deviceKey;
//   static Future<List<M3uPlaylistIsarModel>> getPlaylists() async =>
//       await IsarDB.instance.getPlaylists();
// }
