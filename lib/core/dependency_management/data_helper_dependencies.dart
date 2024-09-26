import 'package:get_it/get_it.dart';
import 'package:ibo_plus/data/helpers/ibo_api_helper.dart';

import '../../data/helpers/isar_helper.dart';
import 'dependencies_group.dart';

class DataHelperDependencies extends DependenciesGroup {
  @override
  void setupDependencies() {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<IsarHelper>(IsarHelper());
    getIt.registerSingleton<IboApiHelper>(IboApiHelper());
  }
}
