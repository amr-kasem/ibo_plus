import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecases/categories/enrich_category.dart';
import '../../domain/usecases/categories/refresh_categories.dart';
import '../../domain/usecases/categories/toggle_favorite.dart';
import '../../shared/types/category_type.dart';
import '../mappers/category/category_presentation_mapper.dart';
import '../models/presentation_models/category.dart';
import '../state_providers/live_states.dart';

class CategoryController {
  static final equality = const ListEquality();
  final _locator = GetIt.instance;
  late final _container = _locator.get<ProviderContainer>();
  late final _refreshCategories = _locator.get<RefreshCategories>();
  late final _enrichCategory = _locator.get<EnrichCategory>();
  late final _toggleFavoriteCategory = _locator.get<ToggleFavoriteCategory>();
  late final _mapper = _locator.get<CategoryPresentationMapper>();
  late final _liveStates = _locator.get<LiveStates>();
  late final showFavoriteOnlyNotifier = {
    CategoryType.liveChannels:
        _container.read(_liveStates.showFavoriteOnly.notifier),
  };
  late final liveCategorySearchNotifier = {
    CategoryType.liveChannels:
        _container.read(_liveStates.searchCategories.notifier)
  };

  Future<void> refreshCategories(CategoryType type) async {
    await _refreshCategories(type);
    _container.invalidate(_liveStates.categories);
  }

  Future<void> loadCategoryData(
    StateProvider<CategoryPresentaionModel> category,
  ) async {
    final c = _container.read(category.notifier);
    final newC = await _enrichCategory(_mapper.toCategory(c.state));
    c.update((s) => s.copyWith(object: newC));
  }

  Future<void> toggleFavorite() async {
    late final hoveredCategoryProvider =
        _container.read(_liveStates.hoveredCategoryProvider);
    if (hoveredCategoryProvider != null) {
      final notifier = _container.read(hoveredCategoryProvider.notifier);

      final category = await _toggleFavoriteCategory(notifier.state.object);

      notifier.update((s) => s.copyWith(object: category));
    }
  }

  void search(CategoryType type, String value) {
    liveCategorySearchNotifier[type]?.update((_) => value);
  }

  void toggleFavoriteOnly(CategoryType type) {
    showFavoriteOnlyNotifier[type]?.update((s) => !s);
  }

  void hoverCategory(StateProvider<CategoryPresentaionModel> categoryProvider) {
    final categoryNotifier = _container.read(categoryProvider.notifier);
    final hoveredCategoryNotifier =
        _container.read(_liveStates.hoveredCategoryProvider.notifier);
    hoveredCategoryNotifier.update((_) => categoryProvider);
    categoryNotifier.update((v) => v.copyWith(hovered: true));
  }
}
