import 'package:get_it/get_it.dart';

import '../../data/repositories_impl/category_repository_impl.dart';
import '../../data/repositories_impl/live_channel_repository_impl.dart';
import '../../data/repositories_impl/playlist_repository_impl.dart';
import '../../data/repositories_impl/settings_repository_impl.dart';
import '../../data/repositories_impl/user_repository_impl.dart';
import '../../domain/repositories/category_repository.dart';
import '../../domain/repositories/live_channel_repository.dart';
import '../../domain/repositories/playlist_repository.dart';
import '../../domain/repositories/settings_repository.dart';
import '../../domain/repositories/user_repository.dart';
import 'dependencies_group.dart';

class Repositories implements DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<SettingsRepository>(SettingsRepositoryImpl());
    getIt.registerSingleton<UserRepository>(UserRepositoryImpl());
    getIt.registerSingleton<PlaylistRepository>(PlaylistRepositoryImpl());
    getIt.registerSingleton<CategoryRepository>(CategoryRepositoryImpl());
    getIt.registerSingleton<LiveRepository>(LiveRepositoryImpl());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
