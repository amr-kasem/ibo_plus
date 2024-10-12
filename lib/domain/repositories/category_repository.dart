import '../../shared/types/category_type.dart';
import '../entities/category/category.dart';
import '../entities/playlist/playlist.dart';
import '../value_objects/media/category/category_data.dart';

abstract class CategoryRepository {
  Future<void> refreshCategories({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<List<Category>> readCategories({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<CategoryData> getCategoryData({
    required Category category,
    required Playlist playlist,
  });
  Future<void> updateCategoryMeta({
    required Category category,
    required Playlist playlist,
  });
}
