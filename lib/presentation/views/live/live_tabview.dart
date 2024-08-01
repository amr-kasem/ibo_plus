import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'live_info.dart';
import 'live_player.dart';

class LiveTabView extends ConsumerStatefulWidget {
  const LiveTabView({super.key});

  @override
  ConsumerState<LiveTabView> createState() => _LiveTabViewState();
}

class _LiveTabViewState extends ConsumerState<LiveTabView> {
  bool showInfo = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Focus(
            onKeyEvent: (node, event) {
              if (event is KeyUpEvent) {}
              return KeyEventResult.handled;
            },
            child: const LivePlayerConsumer(),
          ),
        ),
        if (showInfo)
          Positioned.directional(
            textDirection: Directionality.of(context),
            start: 0,
            top: 0,
            bottom: 0,
            end: 0,
            child: const LiveInfo(),
          ),
      ],
    );
  }
}
