import 'package:get_it/get_it.dart';

import '../../data/mappers/ibo_info/ibo_info.dart';
import '../../data/mappers/ibo_info/ibo_language.dart';
import '../../data/mappers/ibo_info/ibo_notification.dart';
import '../../data/mappers/ibo_info/playlist.dart';
import '../../data/mappers/ibo_info/user.dart';
import '../../data/mappers/settigs/settings.dart';
import 'dependencies_group.dart';

class DataMappers extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<SettingsMapper>(SettingsMapper());
    getIt.registerSingleton<IboInfoMapper>(IboInfoMapper());
    getIt.registerSingleton<UserMapper>(UserMapper());
    getIt.registerSingleton<IboLanguageMapper>(IboLanguageMapper());
    getIt.registerSingleton<IboNotificationMapper>(IboNotificationMapper());
    getIt.registerSingleton<PlaylistMapper>(PlaylistMapper());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
