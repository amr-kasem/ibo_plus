import 'package:get_it/get_it.dart';

import '../../data/data_sources/ibo_remote/ibo_remote_datasource.dart';
import 'dependencies_group.dart';

class IboDataSources extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<IboRemoteDatasource>(IboRemoteDatasourceImpl());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
