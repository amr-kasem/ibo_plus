import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../../../shared/types/category_type.dart';
import '../../../controllers/listing_controller.dart';
import '../../../controllers/player_state.dart';
import '../../../state_providers/live_states.dart';
import '../../widgets/player/player_widget.dart';
import '../../widgets/refresh_indicator.dart';
import 'live_info/live_info.dart';

class LiveTabView extends ConsumerStatefulWidget {
  const LiveTabView({super.key});

  @override
  ConsumerState<LiveTabView> createState() => _LiveTabViewState();
}

class _LiveTabViewState extends ConsumerState<LiveTabView> {
  final _locator = GetIt.instance;
  late final _listingController = _locator.get<ListingController>();
  late final _liveStates = _locator.get<LiveStates>();
  late final playerNotifier = ref.read(playerControllerProvider.notifier);

  @override
  void initState() {
    Future.microtask(() async {
      await _listingController.refreshListings(CategoryType.liveChannels);
      playerNotifier.play();
    });

    super.initState();
  }

  @override
  void dispose() {
    playerNotifier.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Consumer(
            builder: (ctx, r, _) => PlayerWidget(
              player: r.watch(playerControllerProvider).player,
            ),
          ),
        ),
        Positioned.fill(
          child: LiveInfo(),
        ),
        Consumer(
          builder: (_, WidgetRef r, __) {
            return r.watch(_liveStates.isLoading)
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: RefreshBar(hint: 'Refreshing content'),
                  )
                : SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
