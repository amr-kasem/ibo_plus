import 'package:ibo_plus/domain/value_objects/media/playlist/playlist_status_data.dart';

import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';

abstract class PlaylistLocalDatasource {
  Future<M3uPlaylistIsarModel> getPlaylists();
  void updatePlaylistStatus(PlaylistStatusData data);
  void storePlaylists(List<M3uPlaylistIsarModel> playlists);
}
