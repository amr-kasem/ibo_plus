import 'package:get_it/get_it.dart';

import '../../domain/entities/category/category.dart';
import '../../domain/entities/category/category_metadata.dart';
import '../../domain/entities/playlist/playlist.dart';
import '../../domain/repositories/category_repository.dart';
import '../../shared/types/category_type.dart';
import '../data_sources/iptv_remote/category_remote_datasource.dart';
import '../data_sources/isar_local/category_datasource.dart';
import '../dtos/iptv/category/category.dart';
import '../dtos/isar/playlist/category/category.dart';
import '../mappers/category/category.dart';
import '../mappers/category/category_meta.dart';
import '../mappers/playlist/playlist.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final _locator = GetIt.instance;
  late final _remoteDatasource = _locator.get<CategoriesRemoteDatasource>();
  late final _localDatasource = _locator.get<CategoryLocalDatasource>();
  late final _categoryMapper = _locator.get<CategoryMapper>();
  late final _categoryMetaMapper = _locator.get<CategoryMetaMapper>();
  late final _playlistMapper = _locator.get<PlaylistMapper>();

  @override
  Future<List<Category>> readCategories({
    required Playlist playlist,
    required CategoryType type,
  }) async {
    final isarModels = await _localDatasource.getCategories(
      playlist: _playlistMapper.toIsarModel(playlist),
      type: type,
    );
    final categoriesFuture = isarModels.asMap().entries.map(
          (iC) async => await _mapCategory(
            dto: iC.value,
            index: iC.key,
          ),
        );

    final categories = await Future.wait(categoriesFuture);
    return categories
      ..sort((Category c1, Category c2) =>
          (c1.meta?.data.index ?? 0) - (c2.meta?.data.index ?? 0));
  }

  Future<Category> _mapCategory({
    required CategoryIsarModel dto,
    required int index,
  }) async {
    final category = _categoryMapper.toEntity(categoryModel: dto);
    final categoryMetaIsarModel = dto.meta.value;
    late final CategoryMeta categoryMeta;
    if (categoryMetaIsarModel != null) {
      categoryMeta = _categoryMetaMapper.toEntity(categoryMetaIsarModel);
    } else {
      await _localDatasource.initCategoryMetadata(category: dto, index: index);
    }
    return category..meta = categoryMeta;
  }

  @override
  Future<void> refreshCategories({
    required Playlist playlist,
    required CategoryType type,
  }) async {
    final categoriesRemote = await _remoteDatasource.getCategories(
      categoryType: type,
      playlist: playlist,
    );
    final categoriesIsar = categoriesRemote.map(
      (p) => _categoryMapper.toEntity<CategoryJsonModel>(
        categoryModel: p,
        type: type,
      ),
    );
    final playlistIsarModel = _playlistMapper.toIsarModel(playlist);
    await _localDatasource.storeCategories(
      playlist: playlistIsarModel,
      categories: categoriesIsar.map(_categoryMapper.toIsarModel).toList(),
    );
  }

  @override
  Future<void> updateCategoryMeta({
    required Category category,
  }) async {
    final isarModel = _categoryMetaMapper.toIsar(category);
    await _localDatasource.updateCategoryMeta(isarModel);
  }
}
