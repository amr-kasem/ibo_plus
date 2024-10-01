import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../domain/entities/playlist/playlist.dart';
import '../../../shared/types/category_type.dart';
import '../../../shared/types/stream_type.dart';
import '../../dtos/isar/playlist/live_channel/live_channel.dart';
import '../../dtos/isar/playlist/live_channel/live_channel_metadata.dart';
import 'isar_db.dart';

abstract class LiveLocalDatasource {
  Future<List<LiveChannelIsarModel>> getCategories({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<List<LiveMetadataIsarModel>> getCategoriesMeta({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<LiveMetadataIsarModel?> getLiveMeta({
    required int id,
  });
  Future<void> updateLiveChannel(LiveChannelIsarModel category);
  Future<void> storeCategories({
    required Playlist playlist,
    required List<LiveChannelIsarModel> categories,
    required CategoryType type,
  });
  Stream<UpdateEvent> get updateStream;
}

class LiveLocalDatasourceImpl implements LiveLocalDatasource {
  final _controller = StreamController<UpdateEvent>();
  final _getIt = GetIt.instance;
  late final _isar = _getIt.get<IsarDB>();
  @override
  Future<List<LiveChannelIsarModel>> getCategories({
    required Playlist playlist,
    required CategoryType type,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<List<LiveMetadataIsarModel>> getCategoriesMeta({
    required Playlist playlist,
    required CategoryType type,
  }) {
    return _isar.db.liveMetadataIsarModels.where().findAll();
  }

  @override
  Future<void> storeCategories({
    required Playlist playlist,
    required List<LiveChannelIsarModel> categories,
    required CategoryType type,
  }) {
    switch (type) {
      case CategoryType.liveChannels:
        _controller.sink.add(UpdateEvent.liveCategoriesUpdated);
        break;
      case CategoryType.movies:
        _controller.sink.add(UpdateEvent.moviesCategoriesUpdated);
        break;
      case CategoryType.series:
        _controller.sink.add(UpdateEvent.seriesCategoriesUpdated);
        break;
      default:
    }
    return Future.value();
  }

  @override
  Stream<UpdateEvent> get updateStream => _controller.stream;

  @override
  Future<LiveMetadataIsarModel?> getLiveMeta({required int id}) {
    return _isar.db.liveMetadataIsarModels.get(id);
  }

  @override
  Future<void> updateLiveChannel(LiveChannelIsarModel category) {
    // TODO: implement updateLiveChannel
    throw UnimplementedError();
  }
}
