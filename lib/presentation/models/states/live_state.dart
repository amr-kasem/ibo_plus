import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/category/category.dart';
import '../../../domain/entities/live_channel/live_channel.dart';
import '../presentation_models/category.dart';

part 'live_state.freezed.dart';

@freezed
class LiveState with _$LiveState {
  const factory LiveState({
    @Default([]) List<LiveChannel> allChannels,
    @Default([]) List<LiveChannel> channels,
    @Default('') String searchChannels,
    // LiveChannel? selectedChannel,
    // Category? selectedCategory,
    // Category? hoverCategory,
    Object? error,
    // @Default(false) bool notify,
  }) = _LiveState;

  const LiveState._(); // Added for custom getters

  // Custom Getters

  // int get selectedChannelIndex =>
  //     selectedChannel == null ? 0 : channels.indexOf(selectedChannel!);

  // int get selectedCategoryIndex => 0;
  // // selectedCategory == null ? 0 : categories.indexOf(selectedCategory!);

  // bool favoriteCategoriesOnlyOrIgnoreFavorite(Category category) =>
  //     (!onlyFavoriteCategories || category.isFavorite);

  // bool favoriteChannelsOnlyOrIgnoreFavorite(LiveChannel channel) =>
  //     (isFavoriteChannels && (channel.meta?.data.favorite ?? false));

  // bool get isAllChannels => hoverCategory?.data?.categoryId == -2;
  // bool get isFavoriteChannels => hoverCategory?.data?.categoryId == -1;
}
