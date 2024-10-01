import '../../../domain/entities/playlist/playlist_status.dart';
import '../../../domain/value_objects/media/playlist/playlist_status_data.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist_status.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist_metadata.dart';

class PlaylistStatusMapper {
  M3uPlaylistStatusJsonModel toJsonModel(PlaylistStatus status) {
    return M3uPlaylistStatusJsonModel(
      activeSubscription: status.data.activeSubscription,
      expirayDuration: status.data.expirayDuration,
    );
  }

  M3uPlaylistMetadataIsarModel toIsarModel(
      String playlistId, PlaylistStatus status) {
    return M3uPlaylistMetadataIsarModel(
      id: playlistId,
      active: status.data.activeSubscription,
    )..expiray = status.data.expirayDuration;
  }

  PlaylistStatus toEntity<T>(T playlistJsonModel) {
    if (playlistJsonModel is M3uPlaylistStatusJsonModel) {
      return PlaylistStatus(
        data: _playlistStatusJsonModelToEntity(playlistJsonModel),
      );
    } else if (playlistJsonModel is M3uPlaylistMetadataIsarModel) {
      return PlaylistStatus(
          data: _playlistStatusIsarModelToEntity(playlistJsonModel));
    } else {
      throw ArgumentError('invalid argument type [$T]');
    }
  }

  PlaylistStatusData _playlistStatusJsonModelToEntity(
      M3uPlaylistStatusJsonModel playlistJsonModel) {
    return PlaylistStatusData(
      activeSubscription: playlistJsonModel.activeSubscription,
      expirayDuration: playlistJsonModel.expirayDuration,
    );
  }

  PlaylistStatusData _playlistStatusIsarModelToEntity(
    M3uPlaylistMetadataIsarModel playlist,
  ) {
    return PlaylistStatusData(
      activeSubscription: playlist.active,
      expirayDuration: playlist.expiray,
    );
  }
}
