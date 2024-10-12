import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../domain/entities/category/category.dart';
import '../../domain/entities/playlist/playlist.dart';
import '../../domain/repositories/category_repository.dart';
import '../../domain/value_objects/media/category/category_data.dart';
import '../../shared/types/category_type.dart';
import '../data_sources/iptv_remote/category_remote_datasource.dart';
import '../data_sources/isar_local/category_datasource.dart';
import '../dtos/iptv/category/category.dart';
import '../dtos/isar/playlist/category/category.dart';
import '../dtos/isar/playlist/category/category_metadata.dart';
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
  late final _logger = _locator.get<Logger>();
  @override
  Future<List<Category>> readCategories({
    required Playlist playlist,
    required CategoryType type,
  }) async {
    final isarModels = await _localDatasource.getCategories(
      playlist: _playlistMapper.toIsarModel(playlist),
      type: type,
    );
    _logger.i('Fetched ${isarModels.length} categories from local storage');
    final categories = isarModels
        .map(_categoryMapper.toEntity<CategoryMetadataIsarModel>)
        .toList();

    return categories;
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
    final categoriesIsar =
        categoriesRemote.map(_categoryMapper.toEntity<CategoryJsonModel>);
    final playlistIsarModel = _playlistMapper.toIsarModel(playlist);
    await _localDatasource.storeCategories(
      playlist: playlistIsarModel,
      categories: categoriesIsar.map(_categoryMapper.toIsarModel).toList(),
      type: type,
    );
  }

  @override
  Future<void> updateCategoryMeta({
    required Category category,
    required Playlist playlist,
  }) async {
    final playlistId = _playlistMapper.toIsarModel(playlist).isarId;
    final isarModel = _categoryMetaMapper.toIsar(category)
      ..playlistId = playlistId;
    await _localDatasource.updateCategoryMeta(isarModel);
  }

  @override
  Future<CategoryData> getCategoryData({
    required Category category,
    required Playlist playlist,
  }) async {
    final playlistIsarModel = _playlistMapper.toIsarModel(playlist);
    final isarModel = _categoryMetaMapper.toIsar(category)
      ..playlistId = playlistIsarModel.isarId;
    final data = await _localDatasource.getData(isarModel);
    final c = _categoryMapper.toData<CategoryIsarModel>(data);
    return c!;
  }
}
