import 'package:get_it/get_it.dart';

import '../../../domain/entities/playlist/playlist.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import 'playlist_data.dart';

class PlaylistMapper {
  final _getIt = GetIt.instance;
  late final _playlistDataMapper = _getIt.get<PlaylistDataMapper>();

  M3uPlaylistJsonModel toJsonModel(Playlist playlist) {
    return _playlistDataMapper.toJsonModel(playlist.data);
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
    final data = _playlistDataMapper.toEntity<T>(playlistModel);
    return Playlist(data: data);
  }
}
