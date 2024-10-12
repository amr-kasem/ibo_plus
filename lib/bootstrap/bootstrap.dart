import 'dependencies/config_depenecies.dart';
import 'dependencies/data_helpers.dart';
import 'dependencies/data_mappers.dart';
import 'dependencies/dependencies_group.dart';
import 'dependencies/external_dependencies.dart';
import 'dependencies/local_data_sources.dart';
import 'dependencies/presenation_controllers.dart';
import 'dependencies/presenation_states.dart';
import 'dependencies/presentation_mappers.dart';
import 'dependencies/presentation_services.dart';
import 'dependencies/remote_data_sources.dart';
import 'dependencies/repositories.dart';
import 'dependencies/usecases.dart';

/// The `Bootstrap` class is responsible for setting up the entire dependency
/// injection structure of the application. It orchestrates the initialization
/// of all dependencies grouped into various categories such as configurations,
/// data sources, repositories, use cases, and presentation services.
class Bootstrap {
  /// A list of all dependency groups that need to be initialized during the
  /// application's startup phase. Each group is responsible for a specific
  /// set of dependencies.
  static final List<DependenciesGroup> _dependenciesGroups = [
    ConfigDepenecies(), // Configuration-related dependencies
    ExternalDependencies(), // External services or packages
    DataHelpers(), // Utility helpers for data processing
    DataMappers(), // Data mappers for transforming between models
    PresentationMappers(),
    PresenationControllers(),
    PresenationStates(),
    LocalDataSources(), // Local data storage dependencies
    RemoteDataSources(), // Remote API or network-related dependencies
    Repositories(), // Repository pattern implementations
    Usecases(), // Use case logic
    PresentationServices(), // Services required by the presentation layer
  ];

  /// Initializes all registered dependencies by calling the `setupDependencies`
  /// method for each group. This method is meant to be called when the
  /// application starts, ensuring that all required services and dependencies
  /// are properly set up and available.
  static Future<void> bringup() async {
    for (final d in _dependenciesGroups) {
      await d.setupDependencies();
    }
  }

  /// Updates dependencies based on the provided `updateInfo` map. This method
  /// allows for dynamic updating or refreshing of certain dependencies during
  /// the application's lifecycle without restarting the entire application.
  static Future<void> updateDependencies(
      Map<String, dynamic> updateInfo) async {
    for (final d in _dependenciesGroups) {
      await d.updateDependencies(updateInfo);
    }
  }
}
