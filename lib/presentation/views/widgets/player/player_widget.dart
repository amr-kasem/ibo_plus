import 'package:flutter/material.dart';
import 'package:fvp/mdk.dart' as fvp;
import 'package:wakelock_plus/wakelock_plus.dart';

import 'fvp_player_widget.dart';

class PlayerWidget<T> extends StatefulWidget {
  final T player;
  const PlayerWidget({
    super.key,
    required this.player,
  });

  @override
  PlayerWidgetState createState() => PlayerWidgetState();
}

class PlayerWidgetState extends State<PlayerWidget> {
  @override
  void initState() {
    WakelockPlus.enable();
    super.initState();
  }

  @override
  void dispose() {
    WakelockPlus.disable();
    super.dispose();
  }

  Widget getPlayerWidget() {
    if (widget.player is fvp.Player) {
      return FvpPlayerWidget(player: widget.player);
    } else {
      return Text('Unsupported player type');
    }
  }

  @override
  Widget build(BuildContext context) {
    return getPlayerWidget();
  }
}
