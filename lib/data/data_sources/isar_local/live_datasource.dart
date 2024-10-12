import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../dtos/isar/playlist/live_channel/live_channel.dart';
import '../../dtos/isar/playlist/live_channel/live_channel_metadata.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import 'isar_db.dart';

abstract class LiveLocalDatasource {
  Future<List<LiveChannelIsarModel>> getLiveChannels({
    required M3uPlaylistIsarModel playlist,
  });

  Future<void> updateLiveChannel({
    required LiveChannelIsarModel channel,
  });
  Future<void> storeLiveChannels({
    required M3uPlaylistIsarModel playlist,
    required List<LiveChannelIsarModel> liveChannels,
  });

  initLiveChannelMetadata({
    required LiveChannelIsarModel channel,
    required int index,
  });
}

class LiveLocalDatasourceImpl implements LiveLocalDatasource {
  final _locator = GetIt.instance;
  late final _isar = _locator.get<IsarDB>();
  @override
  Future<List<LiveChannelIsarModel>> getLiveChannels({
    required M3uPlaylistIsarModel playlist,
  }) {
    return _isar.db.liveChannelIsarModels
        .where()
        .playlistIdEqualTo(playlist.isarId)
        .findAll();
  }

  @override
  Future<void> storeLiveChannels({
    required M3uPlaylistIsarModel playlist,
    required List<LiveChannelIsarModel> liveChannels,
  }) async {
    await _isar.db.writeTxn(() async {
      for (final c in liveChannels) {
        c.playlistId = playlist.isarId;
      }
      await _isar.db.liveChannelIsarModels.putAll(liveChannels);
    });
  }

  @override
  Future<void> updateLiveChannel({
    required LiveChannelIsarModel channel,
  }) async {
    await _isar.db.writeTxn(() async {
      await _isar.db.liveChannelIsarModels.put(channel);
    });
  }

  @override
  initLiveChannelMetadata({
    required LiveChannelIsarModel channel,
    required int index,
  }) async {
    await channel.meta.load();
    var meta = channel.meta.value;
    if (meta != null) return;
    await _isar.db.writeTxn(() async {
      meta = LiveMetadataIsarModel(
        index: index,
        lastUpdated: DateTime.now(),
        favorite: false,
        locked: false,
      );
      await _isar.db.liveMetadataIsarModels.put(meta!);
      channel.meta.value = meta;
      await channel.meta.save();
    });
  }
}
