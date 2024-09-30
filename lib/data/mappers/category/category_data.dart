import '../../../domain/value_objects/media/category/category_data.dart';
import '../../dtos/iptv/category/category.dart';
import '../../dtos/isar/playlist/category/category.dart';

class CategoryDataMapper {
  CategoryJsonModel toJsonModel(CategoryData category) {
    return CategoryJsonModel(
      categoryId: category.categoryId,
      categoryName: category.categoryName,
      parentId: category.parentId,
    );
  }

  CategoryData toEntity<T>(T categoryJsonModel) {
    if (categoryJsonModel is CategoryJsonModel) {
      return _jsonModelToEntity(categoryJsonModel as CategoryJsonModel);
    } else if (categoryJsonModel is CategoryIsarModel) {
      return isarModelToEntity(categoryJsonModel as CategoryIsarModel);
    } else {
      throw ArgumentError('Invalid category model type');
    }
  }

  CategoryData isarModelToEntity(CategoryIsarModel categoryJsonModel) {
    return CategoryData(
      categoryId: categoryJsonModel.categoryId,
      categoryName: categoryJsonModel.categoryName,
      parentId: categoryJsonModel.parentId,
    );
  }

  CategoryData _jsonModelToEntity(CategoryJsonModel categoryModel) {
    return CategoryData(
      categoryId: categoryModel.categoryId,
      categoryName: categoryModel.categoryName,
      parentId: categoryModel.parentId,
    );
  }
}
