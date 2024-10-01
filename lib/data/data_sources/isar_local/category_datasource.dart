import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../domain/entities/playlist/playlist.dart';
import '../../../shared/types/category_type.dart';
import '../../../shared/types/stream_type.dart';
import '../../dtos/isar/playlist/category/category.dart';
import '../../dtos/isar/playlist/category/category_metadata.dart';
import 'isar_db.dart';

abstract class CategoryLocalDatasource {
  Future<List<CategoryIsarModel>> getCategories({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<List<CategoryMetadataIsarModel>> getCategoriesMeta({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<CategoryMetadataIsarModel?> getCategoryMeta({
    required int id,
  });
  Future<void> updateCategory(CategoryIsarModel category);
  Future<void> storeCategories({
    required Playlist playlist,
    required List<CategoryIsarModel> categories,
    required CategoryType type,
  });
  Stream<UpdateEvent> get updateStream;
}

class CategoryLocalDatasourceImpl implements CategoryLocalDatasource {
  final _controller = StreamController<UpdateEvent>();
  final _getIt = GetIt.instance;
  late final _isar = _getIt.get<IsarDB>();
  @override
  Future<List<CategoryIsarModel>> getCategories({
    required Playlist playlist,
    required CategoryType type,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryMetadataIsarModel>> getCategoriesMeta({
    required Playlist playlist,
    required CategoryType type,
  }) {
    return _isar.db.categoryMetadataIsarModels.where().findAll();
  }

  @override
  Future<void> storeCategories({
    required Playlist playlist,
    required List<CategoryIsarModel> categories,
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
  Future<void> updateCategory(CategoryIsarModel category) {
    throw UnimplementedError();
  }

  @override
  Stream<UpdateEvent> get updateStream => _controller.stream;

  @override
  Future<CategoryMetadataIsarModel?> getCategoryMeta({required int id}) {
    return _isar.db.categoryMetadataIsarModels.get(id);
  }
}
