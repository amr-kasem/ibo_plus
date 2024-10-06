import '../../../domain/entities/playlist/playlist.dart';
import '../../../domain/value_objects/media/playlist/playlist_data.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';

class PlaylistMapper {
  M3uPlaylistJsonModel toJsonModel(Playlist playlist) {
    return _toJson(playlist.data);
  }

  M3uPlaylistIsarModel toIsarModel(Playlist playlist) {
    return M3uPlaylistIsarModel(
      isProtected: playlist.data.isProtected,
      id: playlist.data.id,
      url: playlist.data.url,
      playlistName: playlist.data.playlistName,
      username: playlist.data.username,
      password: playlist.data.password,
      epgUrl: playlist.data.epgUrl,
      playlistType: playlist.data.playlistType,
      originType: playlist.data.originType,
      originUrl: playlist.data.originUrl,
    );
  }

  Playlist toEntity<T>(T playlistModel) {
    final data = toData<T>(playlistModel);
    return Playlist(data: data);
  }

  PlaylistData toData<T>(T playlistJsonModel) {
    if (playlistJsonModel is M3uPlaylistJsonModel) {
      return _jsonModelToData(playlistJsonModel as M3uPlaylistJsonModel);
    } else if (playlistJsonModel is M3uPlaylistIsarModel) {
      return _isarModelToData(playlistJsonModel as M3uPlaylistIsarModel);
    } else {
      throw ArgumentError('Invalid playlist model type');
    }
  }

  PlaylistData _isarModelToData(M3uPlaylistIsarModel playlistJsonModel) {
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

  PlaylistData _jsonModelToData(M3uPlaylistJsonModel playlistModel) {
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

  M3uPlaylistJsonModel _toJson(PlaylistData playlist) {
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
}
