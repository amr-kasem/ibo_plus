import '../../../domain/value_objects/media/playlist/playlist_status_data.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist_status.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';

class PlaylistStatusMapper {
  M3uPlaylistStatusJsonModel toJsonModel(PlaylistStatusData status) {
    return M3uPlaylistStatusJsonModel(
      activeSubscription: status.activeSubscription,
      expirayDuration: status.expirayDuration,
    );
  }

  PlaylistStatusData toEntity<T>(T playlistJsonModel) {
    final defaultStatus = PlaylistStatusData(
        activeSubscription: false, expirayDuration: Duration.zero);
    if (playlistJsonModel is M3uPlaylistStatusJsonModel) {
      return _playlistStatusJsonModelToEntity(playlistJsonModel);
    } else if (playlistJsonModel is M3uPlaylistIsarModel) {
      return _playlistIsarModelToEntity(playlistJsonModel) ?? defaultStatus;
    } else {
      return defaultStatus;
    }
  }

  PlaylistStatusData _playlistStatusJsonModelToEntity(
      M3uPlaylistStatusJsonModel playlistJsonModel) {
    return PlaylistStatusData(
      activeSubscription: playlistJsonModel.activeSubscription,
      expirayDuration: playlistJsonModel.expirayDuration,
    );
  }

  PlaylistStatusData? _playlistIsarModelToEntity(
      M3uPlaylistIsarModel playlist) {
    if (playlist.active != null && playlist.expiray != null) {
      return PlaylistStatusData(
        activeSubscription: playlist.active!,
        expirayDuration: playlist.expiray!,
      );
    } else {
      return null;
    }
  }
}
