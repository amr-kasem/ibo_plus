import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/app_state.dart';

class InfoRemoteControl extends ConsumerStatefulWidget {
  const InfoRemoteControl({
    super.key,
    required this.infoWidget,
    required this.setInfoVisibility,
    required this.setInfoMode,
  });

  final Widget infoWidget;
  final bool Function(bool visible) setInfoVisibility;
  final bool Function(bool categories) setInfoMode;

  @override
  ConsumerState<InfoRemoteControl> createState() => _InfoRemoteControlState();
}

class _InfoRemoteControlState extends ConsumerState<InfoRemoteControl> {
  bool shouldExit = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      skipTraversal: true,
      onFocusChange: (value) {
        setState(() {});
        final traversalBarNotifier = ref.read(AppState.traversalBar.notifier);
        if (value) {
          if (traversalBarNotifier.state) {
            traversalBarNotifier.update((_) => false);
          }
        } else {
          if (!traversalBarNotifier.state) {
            traversalBarNotifier.update((_) => true);
          }
        }
      },
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (widget.setInfoVisibility(true)) {
            return KeyEventResult.handled;
          }
        }
        if (event is KeyDownEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
              return KeyEventResult.handled;

            case LogicalKeyboardKey.arrowLeft:
              widget.setInfoMode(true);

            case LogicalKeyboardKey.goBack:
            case LogicalKeyboardKey.escape:
              if (!widget.setInfoMode(true)) {
                shouldExit = true;
              }
            default:
          }
        } else if (event is KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.goBack:
            case LogicalKeyboardKey.escape:
              if (shouldExit) {
                widget.setInfoMode(false);
                widget.setInfoVisibility(false);
                shouldExit = false;
                return KeyEventResult.ignored;
              }
              return KeyEventResult.handled;

            case LogicalKeyboardKey.arrowLeft:
            case LogicalKeyboardKey.arrowRight:
              return KeyEventResult.handled;
            default:
          }
        }

        return KeyEventResult.ignored;
      },
      child: widget.infoWidget,
    );
  }
}
