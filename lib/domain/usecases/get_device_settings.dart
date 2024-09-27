import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../shared/types/no_parameters.dart';
import '../../shared/types/use_case.dart';
import '../entities/device_id.dart';
import '../entities/settings.dart';
import '../repositories/settings_repository.dart';

class GetDeviceSettings implements UseCase<Settings, NoParameters> {
  final _getIt = GetIt.instance;
  late final _settingsRepository = _getIt.get<SettingsRepository>();
  late final logger = _getIt.get<Logger>();
  @override
  Future<Settings> call(_) async {
    final initialized = await _settingsRepository.isDeviceSettingsInitialized();
    if (!initialized) {
      late final DeviceId deviceId;
      late final Settings deviceSettings;
      try {
        deviceId = await _settingsRepository.getRealDeviceId();
      } catch (e) {
        logger.w(e);
        deviceId = DeviceId.fakeMac();
      } finally {
        deviceSettings =
            await _settingsRepository.initializeDeviceSettings(deviceId);
      }
      return deviceSettings;
    } else {
      return await _settingsRepository.getDeviceSettings();
    }
  }
}
