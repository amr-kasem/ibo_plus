import 'package:flutter/material.dart';

import '../providers/live_state.dart';
import 'exo_player_widget.dart';
import 'fvp_player_widget.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LiveState.fvp ? const FvpPlayerWidget() : const ExoPlayerWidget();
  }
}
