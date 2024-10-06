import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controllers/live_controller.dart';
import '../../../controllers/player_state.dart';
import '../../widgets/player/player_widget.dart';
import '../../widgets/refresh_indicator.dart';
import 'live_info/live_info.dart';

class LiveTabView extends ConsumerStatefulWidget {
  const LiveTabView({super.key});

  @override
  ConsumerState<LiveTabView> createState() => _LiveTabViewState();
}

class _LiveTabViewState extends ConsumerState<LiveTabView> {
  late final liveController = ref.read(liveControllerProvider.notifier);
  late final playerNotifier = ref.read(playerControllerProvider.notifier);

  @override
  void initState() {
    Future.microtask(() async {
      await liveController.refreshData();
      playerNotifier.play();
    });

    super.initState();
  }

  @override
  void dispose() {
    Future.microtask(playerNotifier.stop);
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
            return r.watch(
              liveControllerProvider.select(
                (s) => s.isLoading,
              ),
            )
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
