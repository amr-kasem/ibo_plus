import '../entities/device_id.dart';
import '../entities/settings.dart';

abstract class SettingsRepository {
  Future<bool> isDeviceSettingsInitialized();
  Future<Settings> getDeviceSettings();
  Future<DeviceId> getRealDeviceId();
  Future<Settings> initializeDeviceSettings(DeviceId deviceId);
}
