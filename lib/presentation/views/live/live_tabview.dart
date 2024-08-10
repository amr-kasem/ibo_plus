import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/live_state.dart';
import '../../widgets/player_widget.dart';
import 'live_info.dart';

class LiveTabView extends ConsumerStatefulWidget {
  const LiveTabView({super.key});

  @override
  ConsumerState<LiveTabView> createState() => _LiveTabViewState();
}

class _LiveTabViewState extends ConsumerState<LiveTabView> {
  VoidCallback? play;
  VoidCallback? stop;

  @override
  void initState() {
    play = ref.read(LiveState.openCurrentChannel);
    stop = ref.read(LiveState.stop);
    super.initState();
  }

  @override
  void dispose() {
    log('stop');
    Future.delayed(Duration.zero).then((_) => stop?.call());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(LiveState.currentChannel);
    play?.call();
    return const Stack(
      children: [
        Positioned.fill(
          child: PlayerWidget(),
        ),
        Positioned.fill(
          child: LiveInfo(),
        ),
      ],
    );
  }
}
