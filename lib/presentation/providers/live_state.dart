import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/ibo/category/category.dart';
import '../../data/models/ibo/live/live_channel.dart';
import '../../services/live_services.dart';
import 'player_state.dart';
import 'playlist_state.dart';

part 'live_state.freezed.dart';

@freezed
class LiveState with _$LiveState {
  const factory LiveState({
    @Default([]) List<LiveChannel> allChannels,
    @Default([]) List<LiveChannel> channels,
    @Default('') String searchChannels,
    @Default([]) List<Category> allCategoris,
    @Default([]) List<Category> categories,
    @Default('') String searchCategories,
    LiveChannel? selectedChannel,
    Category? selectedCategory,
    LiveChannel? hoverChannel,
    Category? hoverCategory,
    @Default(false) bool isLoading,
    Object? error,
    @Default(false) bool notify,
    @Default(false) bool onlyFavoriteCategories,
  }) = _LiveState;

  const LiveState._(); // Added for custom getters

  // Custom Getters

  int get selectedChannelIndex =>
      selectedChannel == null ? 0 : channels.indexOf(selectedChannel!);

  int get selectedCategoryIndex =>
      selectedCategory == null ? 0 : categories.indexOf(selectedCategory!);
}

class LiveController extends Notifier<LiveState> {
  late final _playerNotifier = ref.read(playerControllerProvider.notifier);
  LiveState get stateSnapshot => state;
  final equality = const ListEquality();
  @override
  LiveState build() => const LiveState(
        isLoading: true,
        error: null,
      );

  Future<void> init() async {
    try {
      final channels = await LiveServices.getLiveChannels();
      final categories = await LiveServices.getLiveCategories();
      final selectedChannel = await LiveServices.getSelectedChannel();
      final playlist = ref.read(m3UPlaylistControllerProvider).selectedPlaylist;
      final selectedCategory = await LiveServices.getSelectedCategory();

      log(playlist.toString());
      _playerNotifier.openMedia(
          "${playlist?.url}${playlist?.username}/${playlist?.password}/${selectedChannel?.streamId}");
      log("${playlist?.url}${playlist?.username}/${playlist?.password}/${selectedChannel?.streamId}");

      // Update the state with the fetched data
      state = state.copyWith(
        allChannels: channels,
        allCategoris: categories,
        selectedChannel: selectedChannel,
        selectedCategory: selectedCategory,
        isLoading: false, // Loading finished
        hoverCategory: selectedCategory ?? categories.first,
      );
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

  void applyChannelsFilter() {
    final newChannels = state.allChannels
        .where((c) =>
            (int.tryParse(c.categoryId ?? '') ==
                    state.hoverCategory?.categoryId ||
                state.hoverCategory?.categoryId == -2 ||
                (state.hoverCategory?.categoryId == -1 && c.isFavorite)) &&
            c.name.toLowerCase().contains(state.searchChannels.toLowerCase()))
        .toList();

    if (!equality.equals(newChannels, state.channels)) {
      state = state.copyWith(channels: newChannels);
    }
  }

  void applyCategoriesFilter() {
    final newCategories = state.allCategoris
        .where((c) =>
            c.categoryName.toLowerCase().contains(
                  state.searchCategories.toLowerCase(),
                ) &&
            (!state.onlyFavoriteCategories || c.isFavorite))
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
    final playlist = ref
        .read(m3UPlaylistControllerProvider.select((s) => s.selectedPlaylist));
    if (state.selectedChannel == channel) return false;
    // playerNotifier.stop();
    _playerNotifier.openMedia(
        "${playlist?.url}${playlist?.username}/${playlist?.password}/${channel.streamId}");
    // playerNotifier.play();
    log("${playlist?.url}${playlist?.username}/${playlist?.password}/${channel.streamId}");
    state = state.copyWith(selectedChannel: channel);
    LiveServices.changeCurrentChannel(state.selectedChannel!);
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
    if (state.selectedCategory != null) {
      LiveServices.changeCurrentCategoryById(
        state.selectedCategory?.categoryId,
      );
    }
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
    if (state.hoverCategory != null) {
      LiveServices.toggleFavoriteCategory(state.hoverCategory!);
      state = state.copyWith(
        notify: !state.notify,
      );
    }
  }

  void toggleFavoriteChannel() {
    if (state.hoverChannel != null) {
      LiveServices.toggleFavoriteChannel(state.hoverChannel!);
      state = state.copyWith(
        notify: !state.notify,
      );
    }
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
