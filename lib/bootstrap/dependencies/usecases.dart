import 'package:get_it/get_it.dart';

import '../../domain/usecases/categories/get_categories.dart';
import '../../domain/usecases/categories/refresh_categories.dart';
import '../../domain/usecases/live_channels/get_live_channels.dart';
import '../../domain/usecases/live_channels/refresh_live_channels.dart';
import '../../domain/usecases/playlist/get_playlists.dart';
import '../../domain/usecases/settings/get_device_settings.dart';
import '../../domain/usecases/settings/login.dart';
import '../../domain/usecases/settings/set_selected_playlist.dart';
import 'dependencies_group.dart';

class Usecases extends DependenciesGroup {
  @override
  Future<void> setupDependencies() async {
    final GetIt getIt = GetIt.instance;
    getIt.registerSingleton<GetDeviceSettings>(GetDeviceSettings());
    getIt.registerSingleton<Login>(Login());
    getIt.registerSingleton<GetPlaylists>(GetPlaylists());
    getIt.registerSingleton<SetSelectedPlaylist>(SetSelectedPlaylist());
    getIt.registerSingleton<GetCategories>(GetCategories());
    getIt.registerSingleton<RefreshCategories>(RefreshCategories());
    getIt.registerSingleton<GetLiveChannels>(GetLiveChannels());
    getIt.registerSingleton<RefreshLiveChannels>(RefreshLiveChannels());
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {}
}
