import '../../../domain/entities/category/category.dart';
import '../../../domain/value_objects/media/category/category_data.dart';
import '../../../shared/types/category_type.dart';
import '../../dtos/iptv/category/category.dart';
import '../../dtos/isar/playlist/category/category.dart';

class CategoryMapper {
  CategoryIsarModel toIsarModel(Category category) {
    return CategoryIsarModel(
      categoryId: category.data.categoryId,
      categoryName: category.data.categoryName,
      parentId: category.data.parentId,
      type: category.data.type,
    );
  }

  Category toEntity<T>({
    required T categoryModel,
    CategoryType? type,
  }) {
    final data = _toData<T>(categoryModel, type);
    return Category(data: data);
  }

  CategoryData _toData<T>(T categoryJsonModel, CategoryType? type) {
    if (categoryJsonModel is CategoryJsonModel) {
      assert(type != null);
      return _jsonModelToData(categoryJsonModel as CategoryJsonModel, type!);
    } else if (categoryJsonModel is CategoryIsarModel) {
      return _isarModelToData(categoryJsonModel as CategoryIsarModel);
    } else {
      throw ArgumentError('Invalid category model type');
    }
  }

  CategoryData _isarModelToData(CategoryIsarModel categoryIsarModel) {
    return CategoryData(
      categoryId: categoryIsarModel.categoryId,
      categoryName: categoryIsarModel.categoryName,
      parentId: categoryIsarModel.parentId,
      type: categoryIsarModel.type,
    );
  }

  CategoryData _jsonModelToData(
    CategoryJsonModel categoryModel,
    CategoryType type,
  ) {
    return CategoryData(
      categoryId: categoryModel.categoryId,
      categoryName: categoryModel.categoryName,
      parentId: categoryModel.parentId,
      type: type,
    );
  }
}
