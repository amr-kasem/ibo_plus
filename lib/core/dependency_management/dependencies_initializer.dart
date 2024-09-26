import 'package:ibo_plus/core/dependency_management/dependencies_group.dart';
import 'package:ibo_plus/core/dependency_management/external_dependencies.dart';

import 'data_helper_dependencies.dart';

class DependneciesIntializer {
  static final List<DependenciesGroup> dependenciesGroups = [
    DataHelperDependencies(),
    ExternalDependencies(),
  ];

  static void init() {
    for (final d in dependenciesGroups) {
      d.setupDependencies();
    }
  }
}
