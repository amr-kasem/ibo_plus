import 'package:flutter/material.dart';

import '../../../../../data/models/live_channel.dart';
import 'list_widget.dart';

class ChannelListRemoteControl extends StatefulWidget {
  const ChannelListRemoteControl({
    super.key,
    required this.channelList,
  });

  final List<LiveChannel> channelList;

  @override
  State<ChannelListRemoteControl> createState() =>
      _ChannelListRemoteControlState();
}

class _ChannelListRemoteControlState extends State<ChannelListRemoteControl> {
  final FixedExtentScrollController verticalScrollController =
      FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      onFocusChange: (value) {
        // setState(() {
        //   focued = value;
        //   handleTimer(currentChannelIndex, channelList);
        // });
      },
      onKeyEvent: (node, event) {
        return KeyEventResult.ignored;

        // if (!widget.showEPG) {
        //   return KeyEventResult.handled;
        // }
        // final itemIndex = verticalScrollController.selectedItem;

        // if (event is! KeyUpEvent) {
        //   if (!fn.hasPrimaryFocus && !widget.visible) {
        //     fn.requestFocus();
        //     return KeyEventResult.ignored;
        //   }
        //   switch (event.logicalKey) {
        //     case LogicalKeyboardKey.arrowUp:
        //       if (itemIndex - 1 < 0 || !widget.visible) {
        //         return KeyEventResult.ignored;
        //       }
        //       // fn.requestFocus();
        //       moveCursor(itemIndex - 1, channelList);
        //       return KeyEventResult.handled;
        //     case LogicalKeyboardKey.arrowDown:
        //       if (!widget.visible) {
        //         return KeyEventResult.ignored;
        //       }
        //       // fn.requestFocus();
        //       moveCursor(itemIndex + 1, channelList);
        //       return KeyEventResult.handled;

        //     case LogicalKeyboardKey.arrowRight:
        //       if (!widget.visible) {}
        //       final f = node.traversalDescendants.firstOrNull;
        //       if (f != null) {
        //         visibilityTimer?.cancel();
        //         f.requestFocus();
        //       }
        //       break;
        //     case LogicalKeyboardKey.arrowLeft:
        //       if (!widget.visible) {
        //         return KeyEventResult.handled;
        //       }
        //       if (!fn.hasPrimaryFocus) {
        //         fn.requestFocus();
        //         return KeyEventResult.handled;
        //       }
        //       visibilityTimer?.cancel();
        //     case LogicalKeyboardKey.goBack:
        //       if (!fn.hasPrimaryFocus) {
        //         fn.requestFocus();

        //         return KeyEventResult.handled;
        //       } else {
        //         if (liveNotifier
        //             .stateSnapshot.searchChannels.isNotEmpty) {
        //           liveNotifier.searchChannels('');
        //           return KeyEventResult.handled;
        //         }

        //         if (channelList.contains(
        //           liveNotifier.stateSnapshot.selectedChannel,
        //         )) // this is when cat is favorite and channel is favorite
        //         {
        //           if (currentChannelIndex != itemIndex) {
        //             verticalScrollController
        //                 .jumpToItem(currentChannelIndex);
        //             return KeyEventResult.handled;
        //           }
        //         }
        //       }

        //       break;
        //     case LogicalKeyboardKey.select:
        //     case LogicalKeyboardKey.space:
        //       if (widget.visible) {
        //         if (event is KeyRepeatEvent) {
        //           if (fn.hasPrimaryFocus) {
        //             wantToSelect = false;
        //             final f = node.traversalDescendants.firstOrNull;
        //             if (f != null) {
        //               visibilityTimer?.cancel();
        //               f.requestFocus();
        //             } else {
        //               wantToSelect = true;
        //             }
        //           }
        //         }
        //       } else {
        //         visibilityTimer?.cancel();
        //         visibilityTimer = Timer(
        //           const Duration(seconds: 6),
        //           () {
        //             widget.onSelect();
        //           },
        //         );
        //         verticalScrollController
        //             .jumpToItem(currentChannelIndex);
        //       }

        //     default:
        //   }
        // } else {
        //   switch (event.logicalKey) {
        //     case LogicalKeyboardKey.select:
        //     case LogicalKeyboardKey.space:
        //       if (fn.hasPrimaryFocus) {
        //         if (wantToSelect) {
        //           if (currentChannelIndex != itemIndex) {
        //             liveNotifier
        //                 .selectChannel(channelList[itemIndex]);
        //           } else {
        //             widget.onSelect();
        //             return KeyEventResult.handled;
        //           }
        //         }
        //       }
        //       break;
        //     default:
        //   }
        // }
        // return KeyEventResult.ignored;
      },
      child: ChannelListWidget(
        verticalScrollController: verticalScrollController,
        channelList: widget.channelList,
      ),
    );
  }

  void handleTimer(int currentChannelIndex, List<LiveChannel> channelList) {
    // if (focued) {
    //   visibilityTimer?.cancel();

    //   visibilityTimer = Timer(
    //     const Duration(seconds: 2),
    //     () {
    //       if (currentChannelIndex != verticalScrollController.selectedItem) {
    //         liveNotifier.selectChannel(
    //             channelList[verticalScrollController.selectedItem]);
    //       }

    //       visibilityTimer = Timer(
    //         const Duration(seconds: 4),
    //         () {
    //           widget.onSelect();
    //         },
    //       );
    //     },
    //   );
    // }
  }

  void moveCursor(int itemIndex, channelList) async {
    // if (!moving) verticalScrollController.jumpToItem(itemIndex);
    // moving = true;
    // await Future.delayed(Durations.short3);
    // moving = false;
  }
}
