import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/live_state.dart';
import '../../../providers/player_state.dart';
import '../../widgets/player/player_widget.dart';
import 'live_info/live_info.dart';

class LiveTabView extends ConsumerStatefulWidget {
  const LiveTabView({super.key});

  @override
  ConsumerState<LiveTabView> createState() => _LiveTabViewState();
}

class _LiveTabViewState extends ConsumerState<LiveTabView> {
  late final liveNotifier = ref.read(liveControllerProvider.notifier);
  late final playerNotifier = ref.read(playerControllerProvider.notifier);

  @override
  void initState() {
    Future.delayed(Duration.zero).then((_) {
      liveNotifier.init();
      playerNotifier.play();
    });
    super.initState();
  }

  @override
  void dispose() {
    Future.delayed(Duration.zero).then((_) => playerNotifier.stop());

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Consumer(
            builder: (ctx, ref, _) => PlayerWidget(
              player: ref.watch(playerControllerProvider).player,
            ),
          ),
        ),
        const Positioned.fill(
          child: LiveInfo(),
        ),
      ],
    );
  }
}
