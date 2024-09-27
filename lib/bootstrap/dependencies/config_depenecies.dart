import 'package:get_it/get_it.dart';

import '../config/app_config.dart';
import 'dependencies_group.dart';

class ConfigDepenecies extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final getIt = GetIt.instance;
    final config = AppConfig();
    await config.init();
    getIt.registerSingleton<AppConfig>(config);
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
