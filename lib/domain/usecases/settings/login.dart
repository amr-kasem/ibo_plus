import 'package:get_it/get_it.dart';

import '../../../bootstrap/bootstrap.dart';
import '../../../shared/types/no_parameters.dart';
import '../../../shared/types/use_case.dart';
import '../../entities/settings/ibo_info.dart';
import '../../repositories/playlist_repository.dart';
import '../../repositories/user_repository.dart';
import '../playlist/get_playlists.dart';
import 'get_device_settings.dart';
import 'set_selected_playlist.dart';

class Login implements UseCase<IboInfo, NoParameters> {
  final _locator = GetIt.instance;
  late final _userRepository = _locator.get<UserRepository>();
  late final _playlistRepository = _locator.get<PlaylistRepository>();
  late final _getDeviceSettings = _locator.get<GetDeviceSettings>();
  late final _getPlaylists = _locator.get<GetPlaylists>();
  late final _setSelectedPlaylist = _locator.get<SetSelectedPlaylist>();

  @override
  Future<IboInfo> call(_) async {
    final deviceSettings = await _getDeviceSettings(NoParameters());
    final iboInfo = await _userRepository.login(deviceSettings.deviceId);
    await Bootstrap.updateDependencies({'tmdbApiKey': iboInfo.data.tmdbApiKey});
    await _playlistRepository.initializePlaylists(iboInfo.playlists);
    final playlists = await _getPlaylists(NoParameters());
    // if (deviceSettings.selectedPlaylist == null) {
    await _setSelectedPlaylist(playlists[1]);
    // }
    return iboInfo;
  }
}
