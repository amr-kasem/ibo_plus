import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/live_state.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final currentChannel =
            ref.watch(liveControllerProvider.select((s) => s.selectedChannel));
        return Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black.withOpacity(0.7),
          child: Text(
            currentChannel?.name ?? 'No Channel Selected',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
    // return const FvpPlayerWidget(); //: const ExoPlayerWidget();
  }
}
