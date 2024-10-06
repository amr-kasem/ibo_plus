import 'package:get_it/get_it.dart';

import '../../data/data_sources/isar_local/category_datasource.dart';
import '../../data/data_sources/isar_local/isar_db.dart';
import '../../data/data_sources/isar_local/live_datasource.dart';
import '../../data/data_sources/isar_local/playlist_datasource.dart';
import '../../data/data_sources/isar_local/settings_datasource.dart';
import 'dependencies_group.dart';

class LocalDataSources extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    final db = IsarDB();
    await db.init();
    getIt.registerSingleton<IsarDB>(db);
    getIt.registerSingleton<SettingsDatasource>(SettingsDatasourceImpl());
    getIt.registerSingleton<PlaylistLocalDatasource>(
        PlaylistLocalDatasourceImpl());
    getIt.registerSingleton<LiveLocalDatasource>(LiveLocalDatasourceImpl());
    getIt.registerSingleton<CategoryLocalDatasource>(
        CategoryLocalDatasourceImpl());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
