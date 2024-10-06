import 'package:get_it/get_it.dart';

import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/settings/settings.dart';
import 'isar_db.dart';

abstract class SettingsDatasource {
  Future<bool> isDeviceInitialized();
  SettingsIsarModel initializeDevice(String deviceId);
  Future<SettingsIsarModel> getDeviceSettings();
  Future<void> setSelectedPlaylist(M3uPlaylistIsarModel settings);
}

class SettingsDatasourceImpl implements SettingsDatasource {
  final _locator = GetIt.instance;
  late final _db = _locator.get<IsarDB>().db;

  @override
  Future<bool> isDeviceInitialized() async {
    final deviceSettings = await _db.settingsIsarModels.get(0);
    return deviceSettings != null;
  }

  @override
  SettingsIsarModel initializeDevice(deviceID) {
    final settings = SettingsIsarModel(
      id: 0,
      deviceId: deviceID,
    );
    _db.writeTxn(() async {
      await _db.settingsIsarModels.put(settings);
    });
    return settings;
  }

  @override
  Future<SettingsIsarModel> getDeviceSettings() async {
    final x = (await _db.settingsIsarModels.get(0))!;
    await x.selectedPlaylist.load();
    return x;
  }

  @override
  Future<void> setSelectedPlaylist(M3uPlaylistIsarModel playlist) async {
    _db.writeTxn(() async {
      final s = await _db.settingsIsarModels.get(0);
      s?.selectedPlaylist.value = playlist;
      s?.selectedPlaylist.save();
      if (s != null) await _db.settingsIsarModels.put(s);
    });
  }
}
