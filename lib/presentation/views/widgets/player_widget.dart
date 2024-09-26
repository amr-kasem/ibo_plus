import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'fvp_player_widget.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});

  @override
  PlayerWidgetState createState() => PlayerWidgetState();
}

class PlayerWidgetState extends State<PlayerWidget> {
  @override
  void initState() {
    Wakelock.enable();
    super.initState();
  }

  @override
  void dispose() {
    Wakelock.disable(); // Ensure wakelock is disabled when widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer(
    //   builder: (context, ref, _) {
    //     final currentChannel =
    //         ref.watch(liveControllerProvider.select((s) => s.selectedChannel));
    //     return Container(
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.black.withOpacity(0.7),
    //       child: Text(
    //         currentChannel?.name ?? 'No Channel Selected',
    //         style: const TextStyle(
    //           color: Colors.white,
    //           fontSize: 18,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //     );
    //   },
    // );
    return const FvpPlayerWidget(); //: const ExoPlayerWidget();
  }

  // ... other methods ...
}
