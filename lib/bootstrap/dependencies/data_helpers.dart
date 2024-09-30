import 'package:get_it/get_it.dart';

import '../../data/services/ibo_api_helper.dart';
import '../../data/services/isar_helper.dart';
import '../../data/services/playlist_api_helper.dart';
import 'dependencies_group.dart';

class DataHelpers extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<IsarHelper>(IsarHelper());
    getIt.registerSingleton<IboApiHelper>(IboApiHelper());
    getIt.registerSingleton<PlaylistApiHelper>(PlaylistApiHelper());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
