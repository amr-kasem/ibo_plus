import '../../../domain/value_objects/media/playlist/playlist_data.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';

class PlaylistDataMapper {
  M3uPlaylistJsonModel toJsonModel(PlaylistData playlist) {
    return M3uPlaylistJsonModel(
      id: playlist.id,
      username: playlist.username,
      password: playlist.password,
      url: playlist.url,
      epgUrl: playlist.epgUrl,
      playlistName: playlist.playlistName,
      isProtected: playlist.isProtected,
      playlistType: playlist.playlistType,
      originType: playlist.originType,
      originUrl: playlist.originUrl,
    );
  }

  PlaylistData toEntity<T>(T playlistJsonModel) {
    if (playlistJsonModel is M3uPlaylistJsonModel) {
      return _jsonModelToEntity(playlistJsonModel as M3uPlaylistJsonModel);
    } else if (playlistJsonModel is M3uPlaylistIsarModel) {
      return isarModelToEntity(playlistJsonModel as M3uPlaylistIsarModel);
    } else {
      throw ArgumentError('Invalid playlist model type');
    }
  }

  PlaylistData isarModelToEntity(M3uPlaylistIsarModel playlistJsonModel) {
    return PlaylistData(
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
    );
  }

  PlaylistData _jsonModelToEntity(M3uPlaylistJsonModel playlistModel) {
    return PlaylistData(
      isProtected: playlistModel.isProtected,
      id: playlistModel.id,
      url: playlistModel.url,
      playlistName: playlistModel.playlistName,
      username: playlistModel.username,
      password: playlistModel.password,
      epgUrl: playlistModel.epgUrl,
      playlistType: playlistModel.playlistType,
      originType: playlistModel.originType,
      originUrl: playlistModel.originUrl,
    );
  }
}
