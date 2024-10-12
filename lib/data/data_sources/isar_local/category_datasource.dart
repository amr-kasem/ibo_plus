import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../shared/types/category_type.dart';
import '../../dtos/isar/playlist/category/category.dart';
import '../../dtos/isar/playlist/category/category_metadata.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import 'isar_db.dart';

abstract class CategoryLocalDatasource {
  Future<List<CategoryMetadataIsarModel>> getCategories({
    required M3uPlaylistIsarModel playlist,
    required CategoryType type,
  });

  Future<void> updateCategoryMeta(CategoryMetadataIsarModel meta);
  Future<void> storeCategories({
    required M3uPlaylistIsarModel playlist,
    required List<CategoryIsarModel> categories,
    required CategoryType type,
  });
  Future<CategoryIsarModel> getData(CategoryMetadataIsarModel category);
}

class CategoryLocalDatasourceImpl implements CategoryLocalDatasource {
  final _locator = GetIt.instance;
  late final _isar = _locator.get<IsarDB>();

  @override
  Future<List<CategoryMetadataIsarModel>> getCategories({
    required M3uPlaylistIsarModel playlist,
    required CategoryType type,
  }) async {
    final categories = await _isar.db.categoryMetadataIsarModels
        .where()
        .playlistIdTypeEqualTo(playlist.isarId, type)
        .sortByIndex()
        .findAll();
    return categories;
  }

  @override
  Future<void> storeCategories({
    required M3uPlaylistIsarModel playlist,
    required List<CategoryIsarModel> categories,
    required CategoryType type,
  }) async {
    await _isar.db.writeTxn(() async {
      for (var e in categories) {
        e.playlistId = playlist.isarId;
      }
      await _isar.db.categoryIsarModels.putAll(categories);
      final meta = categories
          .asMap()
          .map(
            (i, c) => MapEntry(
              i,
              CategoryMetadataIsarModel(
                categoryName: c.categoryName,
                categoryId: c.categoryId,
                index: i,
                lastUpdated: DateTime.now(),
                type: type,
              )
                ..category.value = c
                ..playlistId = playlist.isarId,
            ),
          )
          .values
          .toList();
      await _isar.db.categoryMetadataIsarModels.putAll(meta);
      for (final m in meta) {
        m.category.save();
      }
    });
  }

  @override
  Future<void> updateCategoryMeta(CategoryMetadataIsarModel meta) async {
    await _isar.db.writeTxn(() async {
      await _isar.db.categoryMetadataIsarModels.put(meta);
    });
  }

  @override
  Future<CategoryIsarModel> getData(CategoryMetadataIsarModel meta) async {
    final dto = await _isar.db.categoryIsarModels.get(meta.isarId);
    return dto!;
  }
}
