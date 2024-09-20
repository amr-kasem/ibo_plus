import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../data/models/live_channel.dart';
import 'list_widget.dart';

class ChannelListRemoteControl extends StatefulWidget {
  const ChannelListRemoteControl({
    super.key,
    required this.channelList,
    required this.visible,
    required this.onSelect,
    required this.onClose,
    required this.scrollKey,
  });

  final List<LiveChannel> channelList;
  final bool visible;
  final bool Function(LiveChannel) onSelect;
  final Function() onClose;
  final PageStorageKey scrollKey;
  @override
  State<ChannelListRemoteControl> createState() =>
      _ChannelListRemoteControlState();
}

class _ChannelListRemoteControlState extends State<ChannelListRemoteControl> {
  final FixedExtentScrollController verticalScrollController =
      FixedExtentScrollController();

  final FocusNode fn = FocusNode();

  bool wantToSelect = false;
  bool moving = false;
  bool showSettings = false;

  Timer? visibilityTimer;
  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      focusNode: fn,
      onKeyEvent: (node, event) {
        if (!widget.visible) {
          return KeyEventResult.ignored;
        }

        final itemIndex = verticalScrollController.selectedItem;

        if (event is! KeyUpEvent) {
          handleTimer();
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
              if (itemIndex - 1 < 0) {
                return KeyEventResult.ignored;
              }
              moveCursor(itemIndex - 1, widget.channelList);
              return KeyEventResult.handled;
            case LogicalKeyboardKey.arrowDown:
              moveCursor(itemIndex + 1, widget.channelList);
              return KeyEventResult.handled;

            case LogicalKeyboardKey.arrowRight:
              final f = node.traversalDescendants.firstOrNull;
              if (f != null) {
                f.requestFocus();
              }
              break;
            case LogicalKeyboardKey.arrowLeft:
              if (!fn.hasPrimaryFocus) {
                setState(() {
                  showSettings = false;
                });
                fn.requestFocus();
                return KeyEventResult.handled;
              }
            case LogicalKeyboardKey.goBack:
              if (!fn.hasPrimaryFocus) {
                setState(() {
                  showSettings = false;
                });
                fn.requestFocus();
                return KeyEventResult.handled;
              } else {
                // if (liveNotifier.stateSnapshot.searchChannels.isNotEmpty) {
                //   liveNotifier.searchChannels('');
                //   return KeyEventResult.handled;
                // }

                // if (widget.channelList.contains(
                //   liveNotifier.stateSnapshot.selectedChannel,
                // )) // this is when cat is favorite and channel is favorite
                // {
                //   if (currentChannelIndex != itemIndex) {
                //     verticalScrollController.jumpToItem(currentChannelIndex);
                //     return KeyEventResult.handled;
                //   }
                // }
              }

              break;
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              if (event is KeyRepeatEvent) {
                if (fn.hasPrimaryFocus) {
                  wantToSelect = false;
                  setState(() {
                    showSettings = true;
                  });
                }
              } else {
                wantToSelect = true;
              }

            default:
          }
        } else {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              if (fn.hasPrimaryFocus) {
                if (wantToSelect) {
                  if (!widget.onSelect(widget.channelList[itemIndex])) {
                    visibilityTimer?.cancel();
                    widget.onClose();
                    return KeyEventResult.handled;
                  }
                }
              }
              break;
            default:
          }
        }
        return KeyEventResult.ignored;
      },
      child: ChannelListWidget(
        verticalScrollController: verticalScrollController,
        channelList: widget.channelList,
        showSettings: showSettings,
        scrollKey: widget.scrollKey,
      ),
    );
  }

  void handleTimer() {
    visibilityTimer?.cancel();
    if (!fn.hasPrimaryFocus) return;
    visibilityTimer = Timer(
      const Duration(seconds: 2),
      () {
        if (!widget.onSelect(
            widget.channelList[verticalScrollController.selectedItem])) {
          widget.onClose();
        } else {
          visibilityTimer = Timer(
            const Duration(seconds: 4),
            () {
              widget.onClose();
            },
          );
        }
      },
    );
  }

  void moveCursor(int itemIndex, channelList) async {
    if (!moving) verticalScrollController.jumpToItem(itemIndex);
    moving = true;
    await Future.delayed(Durations.short3);
    moving = false;
  }
}
