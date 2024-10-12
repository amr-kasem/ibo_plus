import 'package:get_it/get_it.dart';
import 'package:riverpod/riverpod.dart';

import '../../domain/usecases/live_channels/refresh_live_channels.dart';
import '../../shared/types/category_type.dart';
import '../../shared/types/no_parameters.dart';
import '../state_providers/live_states.dart';

class ItemsController {
  final _locator = GetIt.instance;
  late final _container = _locator.get<ProviderContainer>();
  late final _refreshItems = {
    CategoryType.liveChannels: _locator.get<RefreshLiveChannels>(),
  };

  late final _viewStates = {
    CategoryType.liveChannels: _locator.get<LiveStates>()
  };

  // late final _enrichItem = <CategoryType, dynamic>{
  //   CategoryType.liveChannels: null,
  // };
  // late final _toggleFavoriteItem = {
  //   CategoryType.liveChannels: _locator.get<ToggleFavoriteChannel>(),
  // };
  // late final _mappers = {
  //   CategoryType.liveChannels: null,
  // };
  Future<void> refreshItems(CategoryType type) async {
    await _refreshItems[type]!(NoParameters());
    if (_viewStates[type] != null) {
      _container.invalidate(_viewStates[type]!.items);
    }
  }

  // Future<void> loadItemData(
  //   CategoryType type,
  //   StateProvider<ItemPresentationModel> category,
  // ) async {
  //   final c = _container.read(category.notifier);
  //   if (_enrichItem[type] != null) {
  //     // final newC = await _enrichItem[type](_mapper.toCategory(c.state));
  //     // c.update((s) => s.copyWith(object: newC));
  //   }
  // }

  Future<void> toggleFavorite(CategoryType type) async {
    // late final hoveredCategoryProvider =
    //     _container.read(_viewStates[type].hoveredCategoryProvider);
    // if (hoveredCategoryProvider != null) {
    //   final notifier = _container.read(hoveredCategoryProvider.notifier);

    //   final category = await _toggleFavoriteCategory(notifier.state.object);

    //   notifier.update((s) => s.copyWith(object: category));
    // }
  }

  void search(CategoryType type, String value) {
    // liveCategorySearchNotifier[type]?.update((_) => value);
  }
}
