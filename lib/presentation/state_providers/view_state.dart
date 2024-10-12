import 'package:get_it/get_it.dart';
import 'package:riverpod/riverpod.dart';

import '../../domain/entities/category/category.dart';
import '../../domain/entities/item.dart';
import '../../domain/usecases/categories/get_categories.dart';
import '../mappers/category/category_presentation_mapper.dart';
import '../mappers/category/item_presentation_mapper.dart';
import '../models/presentation_models/category.dart';
import '../models/presentation_models/item.dart';

abstract class ViewState<T> {
  final locator = GetIt.instance;
  late final getCategories = locator.get<GetCategories>();
  late final _categoryMapper = locator.get<CategoryPresentationMapper>();
  late final _itemPresentationMapper = locator.get<ItemPresentationMapper>();

  // categories
  FutureProvider<List<Category>> get categories;

  final searchCategories = StateProvider<String>((_) => '');
  late final filteredCategories =
      FutureProvider<List<CategoryPresentaionModel>>(
    (ref) async {
      final keywords = ref.watch(searchCategories);
      final categories = await ref.watch(this.categories.future);
      final showFavoriteOnly = ref.watch(this.showFavoriteOnly);
      return categories
          .where(
            (c) => c.matches(keywords) && (!showFavoriteOnly || c.isFavorite),
          )
          .map(_categoryMapper.fromCategory)
          .toList();
    },
  );
  final hoveredCategoryProvider =
      StateProvider<StateProvider<CategoryPresentaionModel>?>(
    (_) => null,
  );
  final showFavoriteOnly = StateProvider<bool>((_) => false);

  //  final selectedCategoryProvider =
  //     StateProvider<StateProvider<CategoryPresentaionModel>?>(
  //   (_) => null,
  // );

  // items
  FutureProvider<List<Item>> get items;
  final searchItems = StateProvider<String>((_) => '');

  late final filteredItems = FutureProvider<List<ItemPresentationModel>>(
    (ref) async {
      final keywords = ref.watch(searchItems);
      final items = await ref.watch(this.items.future);
      final categoryProvider = ref.watch(this.hoveredCategoryProvider);
      CategoryPresentaionModel? category;
      if (categoryProvider != null) {
        category = ref.read(categoryProvider);
      }

      return items
          .where(
            (c) => c.matches(keywords) && c.belongsTo(category!.object),
          )
          .map(_itemPresentationMapper.fromItem)
          .toList();
    },
  );
  // common
  final isLoading = StateProvider((_) => false);
}
