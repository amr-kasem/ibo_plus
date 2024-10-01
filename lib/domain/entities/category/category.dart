import '../../value_objects/media/category/category_data.dart';
import 'category_metadata.dart';

class Category {
  CategoryData data;
  CategoryMeta? meta;
  Category({
    required this.data,
  });
}
