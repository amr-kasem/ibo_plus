import '../../../domain/entities/category/category.dart';
import '../../../domain/entities/category/category_metadata.dart';
import '../../../domain/value_objects/media/category/category_metadata.dart';
import '../../dtos/isar/playlist/category/category_metadata.dart';

class CategoryMetaMapper {
  CategoryMetadataIsarModel toIsar(Category category) {
    return CategoryMetadataIsarModel(
      index: category.meta!.data.index,
      lastUpdated: category.meta!.data.lastUpdated,
      favorite: category.meta?.data.favorite ?? false,
      locked: category.meta?.data.locked ?? false,
    );
  }

  CategoryMeta toEntity(CategoryMetadataIsarModel model) {
    return CategoryMeta(
      data: CategoryMetadata(
        index: model.index,
        lastUpdated: model.lastUpdated,
        favorite: model.favorite,
        locked: model.locked,
      ),
    );
  }
}
