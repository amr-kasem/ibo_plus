import '../../shared/types/category_type.dart';
import '../entities/category/category.dart';
import '../entities/playlist/playlist.dart';

abstract class CategoryRepository {
  Future<void> refreshCategories({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<List<Category>> readCategories({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<void> updateCategoryMeta({
    required Category category,
  });
}
