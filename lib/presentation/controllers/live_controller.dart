import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../domain/entities/category/category.dart';
import '../../domain/entities/live_channel/live_channel.dart';
import '../../domain/entities/playlist/playlist.dart';
import '../../domain/usecases/categories/get_categories.dart';
import '../../domain/usecases/categories/refresh_categories.dart';
import '../../domain/usecases/live_channels/get_live_channels.dart';
import '../../domain/usecases/live_channels/refresh_live_channels.dart';
import '../../domain/usecases/settings/get_device_settings.dart';
import '../../shared/types/category_type.dart';
import '../../shared/types/no_parameters.dart';
import '../models/live_state.dart';
import 'player_state.dart';

class LiveController extends Notifier<LiveState> {
  final _locator = GetIt.instance;
  late final _getChannels = _locator.get<GetLiveChannels>();
  late final _refreshChannels = _locator.get<RefreshLiveChannels>();
  late final _getCategories = _locator.get<GetCategories>();
  late final _getSelectedCategory = _locator.get<GetDeviceSettings>();
  late final _refreshCategories = _locator.get<RefreshCategories>();
  late final _logger = _locator.get<Logger>();

  late final _playerNotifier = ref.read(playerControllerProvider.notifier);
  LiveState get stateSnapshot => state;

  late final Playlist _playlist;

  final equality = const ListEquality();
  @override
  LiveState build() {
    Future.microtask(init);
    return const LiveState(
      isLoading: true,
      error: null,
    );
  }

  Future<void> init() async {
    try {
      final channels = await _getChannels(NoParameters());
      final categories = await _getCategories(CategoryType.liveChannels);
      final selectedChannel = channels.firstOrNull;

      final selectedCategory = categories.firstOrNull;
      _playlist =
          (await _getSelectedCategory(NoParameters())).selectedPlaylist!;

      // log(playlist.toString());
      // _playerNotifier.openMedia(
      //     "${playlist.url}${playlist.username}/${playlist.password}/${selectedChannel!.data.streamId}");
      // // log("${playlist?.url}${playlist?.username}/${playlist?.password}/${selectedChannel?.streamId}");

      // Update the state with the fetched data

      state = state.copyWith(
        allChannels: channels,
        allCategoris: categories,
        selectedChannel: selectedChannel,
        selectedCategory: selectedCategory,
        isLoading: false, // Loading finished
        hoverCategory: selectedCategory,
      );
      _logger.i('channels count = ${channels.length}');
      applyChannelsFilter();
      applyCategoriesFilter();
    } catch (e) {
      // Handle errors by updating the error state
      state = state.copyWith(
        isLoading: false, // Stop loading
        error: e, // Store the error
      );
    }
  }

  Future<void> refreshData() async {
    state = state.copyWith(isLoading: true);
    final futures = [
      _refreshCategories(CategoryType.liveChannels),
      _refreshChannels(NoParameters()),
    ];
    await Future.wait(futures);
    await init();
  }

  void applyChannelsFilter() {
    final newChannels = state.allChannels
        .where((c) =>
            (int.tryParse(c.data.categoryId ?? '') ==
                    state.hoverCategory?.data.categoryId ||
                state.hoverCategory?.data.categoryId == -2 ||
                (state.hoverCategory?.data.categoryId == -1 &&
                    (c.meta?.data.favorite ?? false))) &&
            c.data.name
                .toLowerCase()
                .contains(state.searchChannels.toLowerCase()))
        .toList();

    if (!equality.equals(newChannels, state.channels)) {
      state = state.copyWith(channels: newChannels);
    }
  }

  void applyCategoriesFilter() {
    final newCategories = state.allCategoris
        .where((c) =>
            c.data.categoryName.toLowerCase().contains(
                  state.searchCategories.toLowerCase(),
                ) &&
            (!state.onlyFavoriteCategories || (c.meta?.data.favorite ?? false)))
        .toList();

    if (!equality.equals(newCategories, state.categories)) {
      state = state.copyWith(categories: newCategories);
    }
  }

  void updateSearchChannels(String search) {
    state = state.copyWith(searchChannels: search);
  }

  void updateSearchCategories(String search) {
    state = state.copyWith(searchCategories: search);
  }

  bool selectChannel(LiveChannel channel) {
    // final playlist = ref
    //     .read(m3UPlaylistControllerProvider.select((s) => s.selectedPlaylist));

    if (state.selectedChannel == channel) return false;
    _playerNotifier.stop();
    // _playerNotifier.openMedia(
    //     "${playlist?.url}${playlist?.username}/${playlist?.password}/${channel.streamId}");
    _playerNotifier.openMedia(
        "${_playlist.data.url}${_playlist.data.username}/${_playlist.data.password}/${channel.data.streamId}");

    _playerNotifier.play();

    // log("${playlist?.url}${playlist?.username}/${playlist?.password}/${channel.streamId}");
    state = state.copyWith(selectedChannel: channel);
    // LiveServices.changeCurrentChannel(state.selectedChannel!);
    commitSelectedCategory();
    return true;
  }

  void selectCategory(Category category) {
    state = state.copyWith(hoverCategory: category);
  }

  void selectHoverChannel(LiveChannel channel) {
    state = state.copyWith(hoverChannel: channel);
    applyChannelsFilter();
  }

  int resetCategry() {
    state = state.copyWith(hoverCategory: state.selectedCategory);
    return state.selectedCategory == null
        ? 0
        : state.categories.indexOf(state.selectedCategory!);
  }

  void commitSelectedCategory() async {
    state = state.copyWith(
      selectedCategory: state.hoverCategory,
    );
    // if (state.selectedCategory != null) {
    //   LiveServices.changeCurrentCategoryById(
    //     state.selectedCategory?.categoryId,
    //   );
    // }
  }

  void searchChannels(String v) async {
    state = state.copyWith(
      searchChannels: v,
    );
    applyChannelsFilter();
  }

  void searchCategories(String v) async {
    state = state.copyWith(
      searchCategories: v,
    );
    applyCategoriesFilter();
  }

  void toggleFavoriteCategory() {
    state.hoverCategory?.meta?.data = state.hoverCategory!.meta!.data.copyWith(
      favorite: !state.hoverCategory!.meta!.data.favorite,
    );
  }

  void toggleFavoriteChannel() {
    state.hoverChannel?.meta?.data = state.hoverChannel!.meta!.data.copyWith(
      favorite: !state.hoverChannel!.meta!.data.favorite,
    );
  }

  void toggleShowOnlyFavoriteCategories() {
    state = state.copyWith(
      onlyFavoriteCategories: !state.onlyFavoriteCategories,
    );
    applyCategoriesFilter();
  }
}

final liveControllerProvider = NotifierProvider<LiveController, LiveState>(
  () => LiveController(),
);
