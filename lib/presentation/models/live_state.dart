import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/category/category.dart';
import '../../domain/entities/live_channel/live_channel.dart';

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
