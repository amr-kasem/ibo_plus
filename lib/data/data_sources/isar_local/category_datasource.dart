import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../domain/entities/playlist.dart';
import '../../../shared/types/category_type.dart';
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
  });
  Stream<void> get updateStream;
}

class CategoryLocalDatasourceImpl implements CategoryLocalDatasource {
  final _controller = StreamController<void>();
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
  }) {
    _controller.sink.add(null);
    return Future.value();
  }

  @override
  Future<void> updateCategory(CategoryIsarModel category) {
    throw UnimplementedError();
  }

  @override
  Stream<void> get updateStream => _controller.stream;

  @override
  Future<CategoryMetadataIsarModel?> getCategoryMeta({required int id}) {
    return _isar.db.categoryMetadataIsarModels.get(id);
  }
}
