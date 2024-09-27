import 'package:auk_utils/auk_utils.dart';
import 'package:get_it/get_it.dart';

import '../../domain/entities/device_id.dart';
import '../../domain/entities/settings.dart';
import '../../domain/repositories/settings_repository.dart';
import '../data_sources/isar_local/settings_datasource.dart';
import '../mappers/settigs/settings.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final _getIt = GetIt.instance;
  late final _settingsDataSource = _getIt.get<SettingsDatasource>();
  late final _settingsMapper = _getIt.get<SettingsMapper>();
  late final _aukUtils = _getIt.get<AukUtils>();

  @override
  Future<DeviceId> getRealDeviceId() async {
    final macAddress = await _aukUtils.getMacAddress();
    late final DeviceId id;
    try {
      id = DeviceId.fromMac(macAddress!);
      return id;
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<bool> isDeviceSettingsInitialized() async {
    return await _settingsDataSource.isDeviceInitialized();
  }

  @override
  Future<Settings> getDeviceSettings() async {
    final deviceSettings = await _settingsDataSource.getDeviceSettings();
    try {
      return _settingsMapper.toEntity(deviceSettings);
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<Settings> initializeDeviceSettings(DeviceId deviceId) async {
    final isarModel = _settingsDataSource.initializeDevice(deviceId.toString());
    return _settingsMapper.toEntity(isarModel);
  }
}
