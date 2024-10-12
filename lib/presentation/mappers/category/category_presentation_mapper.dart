import '../../../domain/entities/category/category.dart';
import '../../models/presentation_models/category.dart';

class CategoryPresentationMapper {
  CategoryPresentaionModel fromCategory(Category category) {
    return CategoryPresentaionModel(
      object: category,
      selected: false,
      hovered: false,
    );
  }

  Category toCategory(CategoryPresentaionModel category) {
    return category.object;
  }
}
