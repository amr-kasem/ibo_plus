import 'package:collection/collection.dart';

import '../../models/states/live_state.dart';

class LiveServices {
  static final equality = const ListEquality();
  // final _locator = GetIt.instance;
  // late final _container = _locator.get<ProviderContainer>();

  LiveState applyChannelsFilter(LiveState state) {
    // final newChannels = state.allChannels
    //     .where(
    //       (c) =>
    //           (c.belongsTo(state.hoverCategory) ||
    //               state.isAllChannels ||
    //               state.favoriteChannelsOnlyOrIgnoreFavorite(c)) &&
    //           c.matches(state.searchChannels),
    //     )
    //     .toList();

    // if (!equality.equals(newChannels, state.channels)) {
    //   state = state.copyWith(channels: newChannels);
    // }
    return state;
  }
}
