import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../bootstrap/bootstrap.dart';
import '../../shared/types/no_parameters.dart';
import '../../shared/types/use_case.dart';
import '../entities/ibo_info.dart';
import '../repositories/user_repository.dart';
import 'get_device_settings.dart';

class Login implements UseCase<IboInfo, NoParameters> {
  final _getIt = GetIt.instance;
  late final _userRepository = _getIt.get<UserRepository>();
  late final _getDeviceSettings = _getIt.get<GetDeviceSettings>();
  late final logger = _getIt.get<Logger>();

  @override
  Future<IboInfo> call(_) async {
    final deviceSettings = await _getDeviceSettings(NoParameters());
    final iboInfo = await _userRepository.login(deviceSettings.deviceId);
    await Bootstrap.updateDependencies({'tmdbApiKey': iboInfo.data.tmdbApiKey});

    return iboInfo;
  }
}
