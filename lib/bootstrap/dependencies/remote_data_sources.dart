import 'package:get_it/get_it.dart';

import '../../data/data_sources/ibo_remote/ibo_remote_datasource.dart';
import '../../data/data_sources/iptv_remote/playlist_remote_datasource.dart';
import 'dependencies_group.dart';

class RemoteDataSources extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<IboRemoteDatasource>(IboRemoteDatasourceImpl());
    getIt.registerSingleton<PlaylistRemoteDatasource>(
        PlaylistRemoteDatasourceImpl());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
