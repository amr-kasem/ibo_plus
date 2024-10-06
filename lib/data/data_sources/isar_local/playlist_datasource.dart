import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist_metadata.dart';
import 'isar_db.dart';

abstract class PlaylistLocalDatasource {
  Future<List<M3uPlaylistIsarModel>> getPlaylists();
  Future<List<M3uPlaylistMetadataIsarModel>> getPlaylistsMeta();
  Future<void> updatePlaylistStatus(M3uPlaylistMetadataIsarModel data);
  Future<void> storePlaylists(
    List<M3uPlaylistIsarModel> playlists,
  );
}

class PlaylistLocalDatasourceImpl extends PlaylistLocalDatasource {
  final _locator = GetIt.instance;
  late final _db = _locator.get<IsarDB>().db;

  @override
  Future<List<M3uPlaylistIsarModel>> getPlaylists() async {
    return _db.m3uPlaylistIsarModels.where().findAll();
  }

  @override
  Future<List<M3uPlaylistMetadataIsarModel>> getPlaylistsMeta() async {
    return _db.m3uPlaylistMetadataIsarModels.where().findAll();
  }

  @override
  Future<void> storePlaylists(
    List<M3uPlaylistIsarModel> playlists,
  ) async {
    await _db.writeTxn(() async {
      await _db.m3uPlaylistIsarModels.putAll(playlists);
      final values = playlists
          .map((e) => e.meta.value)
          .where((e) => e != null)
          .cast<M3uPlaylistMetadataIsarModel>()
          .toList();
      //TODO: apply playlists remove
      await _db.m3uPlaylistMetadataIsarModels.putAll(values);
      final f = playlists.map((e) async => await e.meta.save());
      await Future.wait(f);
    });
  }

  @override
  Future<void> updatePlaylistStatus(
    M3uPlaylistMetadataIsarModel data,
  ) async {
    await _db.writeTxn(() async {
      await _db.m3uPlaylistMetadataIsarModels.put(data);
    });
  }
}
