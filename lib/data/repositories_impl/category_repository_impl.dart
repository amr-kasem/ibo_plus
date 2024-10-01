import 'package:get_it/get_it.dart';

import '../../domain/entities/category/category.dart';
import '../../domain/entities/category/category_metadata.dart';
import '../../domain/entities/playlist/playlist.dart';
import '../../domain/repositories/category_repository.dart';
import '../../shared/types/category_type.dart';
import '../../shared/types/stream_type.dart';
import '../data_sources/iptv_remote/category_remote_datasource.dart';
import '../data_sources/isar_local/category_datasource.dart';
import '../dtos/iptv/category/category.dart';
import '../mappers/category/category.dart';
import '../mappers/category/category_meta.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final _getIt = GetIt.instance;
  late final _remoteDatasource = _getIt.get<CategoriesRemoteDatasource>();
  late final _localDatasource = _getIt.get<CategoryLocalDatasource>();
  late final _categoryMapper = _getIt.get<CategoryMapper>();
  late final _categoryMetaMapper = _getIt.get<CategoryMetaMapper>();
  @override
  Stream<UpdateEvent> getUpdateEventsStream() => _localDatasource.updateStream;

  @override
  Future<List<Category>> readCategories({
    required Playlist playlist,
    required CategoryType type,
  }) async {
    final isarModels = await _localDatasource.getCategories(
      playlist: playlist,
      type: type,
    );
    final categoriesFuture = <Future<Category>>[];
    for (final c in isarModels) {
      categoriesFuture.add(_mapCategory(dto: c));
    }

    final categories = await Future.wait(categoriesFuture);
    return categories
      ..sort((Category c1, Category c2) =>
          (c1.meta?.data.index ?? 0) - (c2.meta?.data.index ?? 0));
  }

  Future<Category> _mapCategory({required dto}) async {
    final category = _categoryMapper.toEntity(dto);
    final categoryMetaIsarModel =
        await _localDatasource.getCategoryMeta(id: category.hashCode);

    late final CategoryMeta? categoryMeta;

    if (categoryMetaIsarModel != null) {
      categoryMeta = _categoryMetaMapper.toEntity(categoryMetaIsarModel);
    } else {
      categoryMeta = null;
    }
    return category..meta = categoryMeta;
  }

  @override
  void refreshCategories({
    required Playlist playlist,
    required CategoryType type,
  }) async {
    final categoriesRemote = await _remoteDatasource.getCategories(
      categoryType: type,
      playlist: playlist,
    );
    final categoriesIsar =
        categoriesRemote.map(_categoryMapper.toEntity<CategoryJsonModel>);

    _localDatasource.storeCategories(
      playlist: playlist,
      categories: categoriesIsar.map(_categoryMapper.toIsarModel).toList(),
      type: type,
    );
  }

  @override
  void updateCategory({
    required Category category,
  }) {
    final isarModel = _categoryMapper.toIsarModel(category);
    _localDatasource.updateCategory(isarModel);
  }
}
