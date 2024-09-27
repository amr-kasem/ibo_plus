import 'package:get_it/get_it.dart';

import '../../data/repositories_impl/settings_repository_impl.dart';
import '../../data/repositories_impl/user_repository_impl.dart';
import '../../domain/repositories/settings_repository.dart';
import '../../domain/repositories/user_repository.dart';
import 'dependencies_group.dart';

class Repositories implements DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<SettingsRepository>(SettingsRepositoryImpl());
    getIt.registerSingleton<UserRepository>(UserRepositoryImpl());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
