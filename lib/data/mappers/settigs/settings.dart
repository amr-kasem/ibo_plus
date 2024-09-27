import '../../../../domain/entities/device_id.dart';
import '../../../../domain/entities/settings.dart';
import '../../dtos/isar/settings/settings.dart';

class SettingsMapper {
  SettingsIsarModel toIsarModel(Settings deviceId) {
    return SettingsIsarModel(
      id: 0,
      deviceId: deviceId.toString(),
    );
  }

  Settings toEntity(SettingsIsarModel settings) {
    return Settings(
      deviceId: DeviceId.fromMac(settings.deviceId),
    );
  }
}
