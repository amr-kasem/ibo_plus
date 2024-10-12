import '../../value_objects/media/category/category_data.dart';
import 'category_metadata.dart';

class Category {
  CategoryData? data;
  CategoryMeta? meta;
  Category({
    required this.data,
  });

  bool get isFavorite => meta?.data.favorite ?? false;

  bool matches(String search) =>
      meta!.data.categoryName.toLowerCase().contains(search.toLowerCase());

  void toggleFavorite() => meta?.toggleFavorite();
}
