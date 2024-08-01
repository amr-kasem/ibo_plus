import '../data/models/m3u_playlist.dart';
import '../data/repositories/playlist_repository.dart';
import '../data/repositories/user_repository.dart';
import '../presentation/providers/playlist_providers.dart';
import '../utils/app_utils.dart';

class PlaylistServices {
  static Future<void> initialize() async {
    await PlaylistRepository.initPlaylistsMetadata();
    PlaylistRepository.playlistsNotifier.listen((e) {
      AppUtils.providerContainer.invalidate(PlaylistProviders.playlists);
    });
  }

  static Future<void> selectPlaylist(M3UPlaylist playlist) async {
    await UserRepository.setSelectedPlaylist(playlist);
    AppUtils.providerContainer.invalidate(PlaylistProviders.selectedPlaylist);
    initialize();
  }
}
