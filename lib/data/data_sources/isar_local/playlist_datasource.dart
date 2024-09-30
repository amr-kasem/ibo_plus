import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist_metadata.dart';
import 'isar_db.dart';

abstract class PlaylistLocalDatasource {
  Future<List<M3uPlaylistIsarModel>> getPlaylists();
  void updatePlaylistStatus(M3uPlaylistMetadataIsarModel data);
  void storePlaylists(List<M3uPlaylistIsarModel> playlists);
  void storePlaylistsStatus(List<M3uPlaylistMetadataIsarModel> playlistsStatus);
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
      await _db.m3uPlaylistIsarModels.where().deleteAll();
      await _db.m3uPlaylistIsarModels.putAll(playlists);
    });
  }

  @override
  void updatePlaylistStatus(
    M3uPlaylistMetadataIsarModel data,
  ) {
    _db.writeTxn(() async {
      await _db.m3uPlaylistMetadataIsarModels.put(data);
    });
  }

  @override
  void storePlaylistsStatus(
      List<M3uPlaylistMetadataIsarModel> playlistsStatus) {
    _db.writeTxn(() async {
      await _db.m3uPlaylistIsarModels.where().deleteAll();
      await _db.m3uPlaylistMetadataIsarModels.putAll(playlistsStatus);
    });
  }
}
