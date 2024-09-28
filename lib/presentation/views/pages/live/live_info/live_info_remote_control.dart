import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/app_state.dart';

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
  late final hideBarNotifier = ref.read(AppState.hideBar.notifier);

  @override
  Widget build(BuildContext context) {
    return Focus(
      skipTraversal: true,
      onFocusChange: (value) {
        hideBarNotifier.update((_) => value);
      },
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          if (widget.setInfoVisibility(true)) {
            return KeyEventResult.handled;
          }
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
              return KeyEventResult.handled;

            case LogicalKeyboardKey.arrowLeft:
              return KeyEventResult.handled;

            case LogicalKeyboardKey.goBack:
            case LogicalKeyboardKey.escape:
              if (shouldExit) {
                widget.setInfoVisibility(false);
                widget.setInfoMode(false);
                AppState.navBar.skipTraversal = false;
                AppState.navBar.canRequestFocus = true;
                AppState.navBar.requestFocus();
                hideBarNotifier.update((_) => false);
                shouldExit = false;
                return KeyEventResult.handled;
              }
            default:
          }
        } else if (event is KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.goBack:
            case LogicalKeyboardKey.escape:
              if (!widget.setInfoMode(true)) {
                shouldExit = true;
              }
              return KeyEventResult.handled;

            case LogicalKeyboardKey.arrowLeft:
              if (!widget.setInfoMode(true)) {
                shouldExit = true;
              }
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
