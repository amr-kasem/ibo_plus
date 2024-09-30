import '../../shared/types/category_type.dart';
import '../entities/category.dart';
import '../entities/playlist.dart';

abstract class CategoryRepository {
  void refreshCategories({
    required Playlist playlist,
    required CategoryType type,
  });
  Future<List<Category>> readCategories({
    required Playlist playlist,
    required CategoryType type,
  });
  void updateCategory({required Category category});
  Stream<void> getUpdateEventsStream();
}
