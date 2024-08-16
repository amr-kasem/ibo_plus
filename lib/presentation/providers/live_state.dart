import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/category.dart';
import '../../data/models/live_channel.dart';
import '../../services/live_services.dart';
import 'player_state.dart';
import 'playlist_state.dart';

part 'live_state.freezed.dart';

@freezed
class LiveState with _$LiveState {
  const factory LiveState({
    @Default([]) List<LiveChannel> allChannels,
    @Default('') String searchChannels,
    @Default([]) List<Category> allCategoris,
    @Default('') String searchCategories,
    LiveChannel? selectedChannel,
    Category? selectedCategory,
    Category? hoverCategory,
    @Default(false) bool isLoading,
    Object? error,
  }) = _LiveState;

  const LiveState._(); // Added for custom getters

  // Custom Getters
  List<LiveChannel> get channels => allChannels
      .where((c) =>
          (int.tryParse(c.categoryId ?? '') == hoverCategory?.categoryId ||
              hoverCategory?.categoryId == null ||
              hoverCategory?.categoryId == -1) &&
          c.name.contains(searchChannels))
      .toList();

  List<Category> get categories => allCategoris
      .where((c) => c.categoryName.contains(searchCategories))
      .toList();

  int get selectedChannelIndex =>
      selectedChannel == null ? 0 : channels.indexOf(selectedChannel!);

  int get selectedCategoryIndex =>
      selectedCategory == null ? 0 : categories.indexOf(selectedCategory!);
}

class LiveController extends Notifier<LiveState> {
  late final _playerNotifier = ref.read(playerControllerProvider.notifier);
  LiveState get stateSnapshot => state;
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
      var playlist = ref.watch(m3UPlaylistControllerProvider).selectedPlaylist;

      log(playlist.toString());
      _playerNotifier.openMedia(
          "${playlist?.url}${playlist?.username}/${playlist?.password}/${selectedChannel?.streamId}");
      log("${playlist?.url}${playlist?.username}/${playlist?.password}/${selectedChannel?.streamId}");

      final selectedCategory = await LiveServices.getSelectedCategory();

      // Update the state with the fetched data
      state = state.copyWith(
        allChannels: channels,
        allCategoris: categories,
        selectedChannel: selectedChannel,
        selectedCategory: selectedCategory,
        isLoading: false, // Loading finished
        hoverCategory: selectedCategory ?? categories.first,
      );
    } catch (e) {
      // Handle errors by updating the error state
      state = state.copyWith(
        isLoading: false, // Stop loading
        error: e, // Store the error
      );
    }
  }

  void updateSearchChannels(String search) {
    state = state.copyWith(searchChannels: search);
  }

  void updateSearchCategories(String search) {
    state = state.copyWith(searchCategories: search);
  }

  void selectChannel(LiveChannel channel) {
    final playlist = ref
        .read(m3UPlaylistControllerProvider.select((s) => s.selectedPlaylist));
    // playerNotifier.stop();
    _playerNotifier.openMedia(
        "${playlist?.url}${playlist?.username}/${playlist?.password}/${channel.streamId}");
    // playerNotifier.play();
    log("${playlist?.url}${playlist?.username}/${playlist?.password}/${channel.streamId}");
    state = state.copyWith(selectedChannel: channel);
    LiveServices.changeCurrentChannel(state.selectedChannel!);
  }

  void selectCategory(Category category) {
    state = state.copyWith(hoverCategory: category);
  }

  int resetCategry() {
    state = state.copyWith(hoverCategory: state.selectedCategory);
    return state.selectedCategoryIndex;
  }

  void commitSelectedCategory() async {
    state = state.copyWith(
      selectedCategory: state.hoverCategory,
    );
    if (state.selectedCategory != null) {
      LiveServices.changeCurrentCategoryById(
          state.selectedCategory?.categoryId!);
    }
  }

  void searchChannels(String v) async {
    state = state.copyWith(
      searchChannels: v,
    );
  }

  void searchCategories(String v) async {
    state = state.copyWith(
      searchCategories: v,
    );
  }
}

final liveControllerProvider = NotifierProvider<LiveController, LiveState>(
  () => LiveController(),
);
