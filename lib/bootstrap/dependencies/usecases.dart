import 'package:get_it/get_it.dart';

import '../../domain/usecases/categories/enrich_category.dart';
import '../../domain/usecases/categories/get_categories.dart';
import '../../domain/usecases/categories/refresh_categories.dart';
import '../../domain/usecases/categories/toggle_favorite.dart';
import '../../domain/usecases/live_channels/get_live_channels.dart';
import '../../domain/usecases/live_channels/refresh_live_channels.dart';
import '../../domain/usecases/live_channels/toggle_favorite.dart';
import '../../domain/usecases/playlist/get_playlists.dart';
import '../../domain/usecases/settings/get_device_settings.dart';
import '../../domain/usecases/settings/login.dart';
import '../../domain/usecases/settings/set_selected_playlist.dart';
import 'dependencies_group.dart';

/// The `Usecases` class is responsible for setting up the dependency injection
/// for all use cases in the application. It extends `DependenciesGroup` to
/// implement both the `setupDependencies` and `updateDependencies` methods.
class Usecases extends DependenciesGroup {
  /// Registers all use case dependencies using the `GetIt` service locator.
  /// This method ensures that the necessary use cases are available throughout
  /// the app by registering them as singletons.
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;

    // Register singleton instances of each use case to ensure they are available
    // and reused across the application lifecycle.

    // Device Settings Use Cases
    getIt.registerSingleton<GetDeviceSettings>(GetDeviceSettings());
    getIt.registerSingleton<Login>(Login());

    // Playlist Use Cases
    getIt.registerSingleton<GetPlaylists>(GetPlaylists());
    getIt.registerSingleton<SetSelectedPlaylist>(SetSelectedPlaylist());

    // Category Use Cases
    getIt.registerSingleton<GetCategories>(GetCategories());
    getIt.registerSingleton<RefreshCategories>(RefreshCategories());
    getIt.registerSingleton<ToggleFavoriteCategory>(ToggleFavoriteCategory());
    getIt.registerSingleton<EnrichCategory>(EnrichCategory());

    // Live Channel Use Cases
    getIt.registerSingleton<GetLiveChannels>(GetLiveChannels());
    getIt.registerSingleton<RefreshLiveChannels>(RefreshLiveChannels());
    getIt.registerSingleton<ToggleFavoriteChannel>(ToggleFavoriteChannel());
  }

  /// Updates the registered dependencies based on the given `updateInfo` map.
  /// This is useful if certain dependencies need to be refreshed or updated
  /// dynamically during the application's runtime.
  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {
    // Implement logic to update dependencies if necessary.
    // This can include re-registering or modifying existing dependencies
    // based on the provided `updateInfo`.
  }
}
