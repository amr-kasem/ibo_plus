import '../../../domain/entities/category/category.dart';
import '../../../domain/entities/category/category_metadata.dart';
import '../../../domain/value_objects/media/category/category_metadata.dart';
import '../../dtos/isar/playlist/category/category_metadata.dart';

class CategoryMetaMapper {
  CategoryMetadataIsarModel toIsar(Category category) {
    return CategoryMetadataIsarModel(
      categoryName: category.meta!.data.categoryName,
      index: category.meta!.data.index,
      lastUpdated: category.meta!.data.lastUpdated,
      favorite: category.meta!.data.favorite,
      locked: category.meta!.data.locked,
      type: category.meta!.data.type,
      categoryId: category.meta!.data.categoryId,
    );
  }

  CategoryMeta toEntity(CategoryMetadataIsarModel model) {
    return CategoryMeta(
      data: CategoryMetadata(
        index: model.index,
        lastUpdated: model.lastUpdated,
        favorite: model.favorite,
        locked: model.locked,
        type: model.type,
        categoryId: model.categoryId,
        categoryName: model.categoryName,
      ),
    );
  }
}
