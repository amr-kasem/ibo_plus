import 'package:get_it/get_it.dart';

import '../../presentation/state_providers/live_states.dart';
import 'dependencies_group.dart';

class PresenationStates extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<LiveStates>(LiveStates());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
