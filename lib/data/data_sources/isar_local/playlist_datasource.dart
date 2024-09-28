import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../domain/value_objects/media/playlist/playlist_status_data.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import 'isar_db.dart';

abstract class PlaylistLocalDatasource {
  Future<List<M3uPlaylistIsarModel>> getPlaylists();
  M3uPlaylistIsarModel updatePlaylistStatus(
    M3uPlaylistIsarModel playlist,
    PlaylistStatusData data,
  );
  void storePlaylists(List<M3uPlaylistIsarModel> playlists);
}

class PlaylistLocalDatasourceImpl extends PlaylistLocalDatasource {
  final _getIt = GetIt.instance;
  late final _db = _getIt.get<IsarDB>().db;

  @override
  Future<List<M3uPlaylistIsarModel>> getPlaylists() async {
    return _db.m3uPlaylistIsarModels.where().findAll();
  }

  @override
  void storePlaylists(List<M3uPlaylistIsarModel> playlists) {
    _db.writeTxn(() async {
      final oldPlaylists = await _db.m3uPlaylistIsarModels.where().findAll();
      final updatedList = <M3uPlaylistIsarModel>[];
      for (var playlist in playlists) {
        final p = oldPlaylists.indexOf(playlist);
        if (p == -1) {
          updatedList.add(playlist);
        } else {
          updatedList.add(_updatePlaylist(playlist, oldPlaylists[p]));
        }
      }
      await _db.m3uPlaylistIsarModels.putAll(updatedList);
    });
  }

  M3uPlaylistIsarModel _updatePlaylist(
    M3uPlaylistIsarModel m3uPlaylist,
    M3uPlaylistIsarModel oldM3uPlaylist,
  ) {
    m3uPlaylist.active ??= oldM3uPlaylist.active;
    m3uPlaylist.expiray ??= oldM3uPlaylist.expiray;
    return m3uPlaylist;
  }

  @override
  M3uPlaylistIsarModel updatePlaylistStatus(
    M3uPlaylistIsarModel playlist,
    PlaylistStatusData data,
  ) {
    playlist.active = data.activeSubscription;
    playlist.expiray = data.expirayDuration;
    _db.writeTxn(() async {
      await _db.m3uPlaylistIsarModels.put(playlist);
    });
    return playlist;
  }
}
