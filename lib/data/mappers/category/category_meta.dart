import 'package:get_it/get_it.dart';

import '../../../domain/entities/category.dart';
import '../../../domain/entities/category_metadata.dart';
import '../../../domain/value_objects/media/category/category_metadata.dart';
import '../../dtos/isar/playlist/category/category_metadata.dart';
import 'category.dart';

class CategoryMetaMapper {
  final _getIt = GetIt.instance;
  late final _categoryMapper = _getIt.get<CategoryMapper>();
  CategoryMetadataIsarModel toIsar(Category category) {
    return CategoryMetadataIsarModel(
      index: category.meta!.data.index,
      lastUpdated: category.meta!.data.lastUpdated,
      cateogy: _categoryMapper.toIsarModel(category).isarId,
      favorite: category.meta?.data.favorite ?? false,
      locked: category.meta?.data.locked ?? false,
    );
  }

  CategoryMeta toEntity(CategoryMetadataIsarModel model) {
    return CategoryMeta(
      data: CategoryMetadata(
        index: model.index,
        lastUpdated: model.lastUpdated,
        cateogy: model.cateogy,
        favorite: model.favorite,
        locked: model.locked,
      ),
    );
  }
}
