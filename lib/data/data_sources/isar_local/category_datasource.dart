import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../shared/types/category_type.dart';
import '../../dtos/isar/playlist/category/category.dart';
import '../../dtos/isar/playlist/category/category_metadata.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import 'isar_db.dart';

abstract class CategoryLocalDatasource {
  Future<List<CategoryIsarModel>> getCategories({
    required M3uPlaylistIsarModel playlist,
    required CategoryType type,
  });

  Future<void> updateCategoryMeta(CategoryMetadataIsarModel meta);
  Future<void> storeCategories({
    required M3uPlaylistIsarModel playlist,
    required List<CategoryIsarModel> categories,
  });

  Future<CategoryMetadataIsarModel> initCategoryMetadata({
    required CategoryIsarModel category,
    required int index,
  });
}

class CategoryLocalDatasourceImpl implements CategoryLocalDatasource {
  final _locator = GetIt.instance;
  late final _isar = _locator.get<IsarDB>();

  @override
  Future<List<CategoryIsarModel>> getCategories({
    required M3uPlaylistIsarModel playlist,
    required CategoryType type,
  }) async {
    return await _isar.db.categoryIsarModels
        .where()
        .playlistIdTypeEqualTo(playlist.isarId, type)
        .findAll();
  }

  @override
  Future<void> storeCategories({
    required M3uPlaylistIsarModel playlist,
    required List<CategoryIsarModel> categories,
  }) async {
    await _isar.db.writeTxn(() async {
      for (var e in categories) {
        e.playlistId = playlist.isarId;
      }
      await _isar.db.categoryIsarModels.putAll(categories);
    });
  }

  @override
  Future<void> updateCategoryMeta(CategoryMetadataIsarModel meta) async {
    await _isar.db.writeTxn(() async {
      await _isar.db.categoryMetadataIsarModels.put(meta);
    });
  }

  @override
  Future<CategoryMetadataIsarModel> initCategoryMetadata({
    required CategoryIsarModel category,
    required int index,
  }) async {
    return await _isar.db.writeTxn(() async {
      final categoryMetadata = CategoryMetadataIsarModel(
        index: index,
        lastUpdated: DateTime.now(),
        favorite: false,
        locked: false,
      );
      categoryMetadata.category.value = category;
      await _isar.db.categoryMetadataIsarModels.put(categoryMetadata);
      categoryMetadata.category.save();
      return categoryMetadata;
    });
  }
}
