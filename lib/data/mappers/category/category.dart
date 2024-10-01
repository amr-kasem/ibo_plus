import 'package:get_it/get_it.dart';

import '../../../domain/entities/category/category.dart';
import '../../dtos/iptv/category/category.dart';
import '../../dtos/isar/playlist/category/category.dart';
import 'category_data.dart';

class CategoryMapper {
  final _getIt = GetIt.instance;
  late final _categoryDataMapper = _getIt.get<CategoryDataMapper>();

  CategoryJsonModel toJsonModel(Category category) {
    return _categoryDataMapper.toJsonModel(category.data);
  }

  CategoryIsarModel toIsarModel(Category category) {
    return CategoryIsarModel(
      categoryId: category.data.categoryId,
      categoryName: category.data.categoryName,
      parentId: category.data.parentId,
    );
  }

  Category toEntity<T>(T categoryModel) {
    final data = _categoryDataMapper.toEntity<T>(categoryModel);
    return Category(data: data);
  }
}
