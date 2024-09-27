import '../../../domain/entities/playlist.dart';
import '../../../domain/value_objects/media/playlist/playlist_data.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist.dart';

class PlaylistMapper {
  M3uPlaylistJsonModel toJsonModel(Playlist playlist) {
    return M3uPlaylistJsonModel(
      id: playlist.data.id,
      username: playlist.data.username,
      password: playlist.data.password,
      url: playlist.data.url,
      epgUrl: playlist.data.epgUrl,
      playlistName: playlist.data.playlistName,
      isProtected: playlist.data.isProtected,
      playlistType: playlist.data.playlistType,
      originType: playlist.data.originType,
      originUrl: playlist.data.originUrl,
    );
  }

  Playlist toEntity(M3uPlaylistJsonModel playlistJsonModel) {
    return Playlist(
      data: PlaylistData(
        isProtected: playlistJsonModel.isProtected,
        id: playlistJsonModel.id,
        url: playlistJsonModel.url,
        playlistName: playlistJsonModel.playlistName,
        username: playlistJsonModel.username,
        password: playlistJsonModel.password,
        epgUrl: playlistJsonModel.epgUrl,
        playlistType: playlistJsonModel.playlistType,
        originType: playlistJsonModel.originType,
        originUrl: playlistJsonModel.originUrl,
      ),
    );
  }
}
