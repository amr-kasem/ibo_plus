import 'category/category.dart';

abstract class Item {
  bool get isFavorite;

  bool matches(String search);

  bool belongsTo(Category? category);
}
