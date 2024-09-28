import 'dependencies/config_depenecies.dart';
import 'dependencies/data_helpers.dart';
import 'dependencies/data_mappers.dart';
import 'dependencies/dependencies_group.dart';
import 'dependencies/external_dependencies.dart';
import 'dependencies/local_data_sources.dart';
import 'dependencies/presentation_services.dart';
import 'dependencies/remote_data_sources.dart';
import 'dependencies/repositories.dart';
import 'dependencies/usecases.dart';

class Bootstrap {
  static final List<DependenciesGroup> dependenciesGroups = [
    ConfigDepenecies(),
    ExternalDependencies(),
    DataHelpers(),
    DataMappers(),
    LocalDataSources(),
    RemoteDataSources(),
    Repositories(),
    Usecases(),
    PresentationServices(),
  ];

  static Future<void> bringup() async {
    for (final d in dependenciesGroups) {
      await d.setupDependencies();
    }
  }

  static Future<void> updateDependencies(
      Map<String, dynamic> updateInfo) async {
    for (final d in dependenciesGroups) {
      await d.updateDependencies(updateInfo);
    }
  }
}
