import 'package:get_it/get_it.dart';

import '../../dtos/isar/settings/settings.dart';
import 'isar_db.dart';

abstract class SettingsDatasource {
  Future<bool> isDeviceInitialized();
  SettingsIsarModel initializeDevice(String deviceId);
  Future<SettingsIsarModel> getDeviceSettings();
}

class SettingsDatasourceImpl implements SettingsDatasource {
  final _getIt = GetIt.instance;
  late final _db = _getIt.get<IsarDB>().db;

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
    return (await _db.settingsIsarModels.get(0))!;
  }
}
