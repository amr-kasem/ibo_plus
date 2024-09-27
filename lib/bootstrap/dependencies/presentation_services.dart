import 'package:get_it/get_it.dart';

import '../../presentation/services/router/router.dart';
import 'dependencies_group.dart';

class PresentationServices extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<AppRouter>(AppRouter());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
