import 'dart:developer';

import 'package:flutter/material.dart';
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
  late final VoidCallback play;
  late final VoidCallback stop;
  @override
  void initState() {
    log('play');
    ref.read(LiveState.openCurrentChannel.future).then((p) {
      play = p;
      ref.read(LiveState.stop.future).then((s) {
        stop = s;
        play();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    log('stop');
    stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
