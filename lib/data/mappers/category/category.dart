import 'package:get_it/get_it.dart';

import '../../../domain/entities/category/category.dart';
import '../../../domain/value_objects/media/category/category_data.dart';
import '../../dtos/iptv/category/category.dart';
import '../../dtos/isar/playlist/category/category.dart';
import '../../dtos/isar/playlist/category/category_metadata.dart';
import 'category_meta.dart';

class CategoryMapper {
  final _locator = GetIt.instance;
  late final _metaMapper = _locator.get<CategoryMetaMapper>();
  CategoryIsarModel toIsarModel(Category category) {
    return CategoryIsarModel(
      categoryId: category.data!.categoryId,
      categoryName: category.data!.categoryName,
      parentId: category.data!.parentId,
    );
  }

  Category toEntity<T>(T categoryModel) {
    final data = toData<T>(categoryModel);
    final c = Category(data: data);
    if (categoryModel is CategoryMetadataIsarModel) {
      c.meta = _metaMapper.toEntity(categoryModel);
    }
    return c;
  }

  CategoryData? toData<T>(T categoryJsonModel) {
    if (categoryJsonModel is CategoryJsonModel) {
      return _jsonModelToData(categoryJsonModel as CategoryJsonModel);
    } else if (categoryJsonModel is CategoryIsarModel) {
      return _isarModelToData(categoryJsonModel as CategoryIsarModel);
    }
    return null;
  }

  CategoryData _isarModelToData(CategoryIsarModel categoryIsarModel) {
    return CategoryData(
      categoryId: categoryIsarModel.categoryId,
      categoryName: categoryIsarModel.categoryName,
      parentId: categoryIsarModel.parentId,
    );
  }

  CategoryData _jsonModelToData(
    CategoryJsonModel categoryModel,
  ) {
    return CategoryData(
      categoryId: categoryModel.categoryId,
      categoryName: categoryModel.categoryName,
      parentId: categoryModel.parentId,
    );
  }
}
