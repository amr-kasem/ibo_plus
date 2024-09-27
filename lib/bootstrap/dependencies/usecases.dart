import 'package:get_it/get_it.dart';

import '../../domain/usecases/get_device_settings.dart';
import '../../domain/usecases/login.dart';
import 'dependencies_group.dart';

class Usecases extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<GetDeviceSettings>(GetDeviceSettings());
    getIt.registerSingleton<Login>(Login());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
