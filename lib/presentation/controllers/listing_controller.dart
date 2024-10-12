import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../shared/types/category_type.dart';
import '../state_providers/live_states.dart';
import 'category_controller.dart';
import 'items_controller.dart';

class ListingController {
  final _locator = GetIt.instance;
  late final _container = _locator.get<ProviderContainer>();

  late final _categoryController = _locator.get<CategoryController>();
  late final _itemsController = _locator.get<ItemsController>();
  late final _viewStates = {
    CategoryType.liveChannels: _locator.get<LiveStates>(),
  };
  late final _isLoadingNotifiers = {
    CategoryType.liveChannels: _container
        .read(_viewStates[CategoryType.liveChannels]!.isLoading.notifier),
  };

  Future<void> refreshListings(CategoryType type) async {
    _isLoadingNotifiers[type]?.update((_) => true);
    await _categoryController.refreshCategories(type);
    await _itemsController.refreshItems(type);
    _isLoadingNotifiers[type]?.update((_) => false);
  }
}
