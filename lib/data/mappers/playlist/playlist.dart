import 'package:get_it/get_it.dart';

import '../../../domain/entities/playlist.dart';
import '../../../domain/value_objects/media/playlist/playlist_status_data.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import 'playlist_data.dart';
import 'playlist_status.dart';

class PlaylistMapper {
  final _getIt = GetIt.instance;
  late final _playlistDataMapper = _getIt.get<PlaylistDataMapper>();
  late final _playlistStatusMapper = _getIt.get<PlaylistStatusMapper>();

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
    )
      ..active = playlist.status.activeSubscription
      ..expiray = playlist.status.expirayDuration;
  }

  Playlist toEntity<T>(T playlistModel) {
    final data = _playlistDataMapper.toEntity<T>(playlistModel);
    PlaylistStatusData status;
    final defaultStatus = PlaylistStatusData(
      activeSubscription: false,
      expirayDuration: Duration.zero,
    );
    if (T is M3uPlaylistIsarModel) {
      status = _playlistStatusMapper.toEntity<M3uPlaylistIsarModel>(
        playlistModel as M3uPlaylistIsarModel,
      );
    }
    status = defaultStatus;
    return Playlist(
      data: data,
      status: status,
    );
  }
}
