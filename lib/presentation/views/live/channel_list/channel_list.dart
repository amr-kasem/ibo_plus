import 'dart:async';

import 'package:collection/collection.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../utils/app_utils.dart';
import '../../../providers/live_state.dart';
import 'channel_list_header.dart';
import 'channel_tile.dart';
import 'options/channel_options_parent.dart';

class ChannelList extends ConsumerStatefulWidget {
  const ChannelList({
    required this.showEPG,
    required this.visible,
    required this.onSelect,
    super.key,
  });
  final bool showEPG;
  final bool visible;
  final VoidCallback onSelect;

  @override
  ConsumerState<ChannelList> createState() => _ChannelListState();
}

class _ChannelListState extends ConsumerState<ChannelList> {
  late final liveNotifier = ref.read(liveControllerProvider.notifier);

  late final FixedExtentScrollController verticalScrollController;
  bool focued = false;
  final fn = FocusNode();
  bool epgVisible = false;
  Timer? epgTimer;
  bool moving = false;
  late final chaI = liveNotifier.stateSnapshot.selectedChannelIndex;
  late final catId = liveNotifier.stateSnapshot.selectedCategory?.categoryId;
  late var cha = liveNotifier.stateSnapshot.selectedChannel;
  late final chaId = int.tryParse(cha?.categoryId ?? '');
  // late final catId = ref.read(LiveState.hoverCategory)?.categoryId;
  @override
  void initState() {
    epgTimer = Timer(Durations.short2, () {
      if (mounted) {
        setState(() {
          epgVisible = true;
        });
      }
    });
    int x = 0;
    if (catId == chaId || // this is when channel belongs to category
            catId == null || // this is when category is all channels
            (catId == -1 &&
                (cha?.isFavorite ??
                    false)) // this is when cat is favorite and channel is favorite

        ) {
      x = chaI;
    }
    verticalScrollController = FixedExtentScrollController(initialItem: x);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(liveControllerProvider.select((s) => s.channels), (a, b) {
      final same = const ListEquality().equals(a, b);
      if (!same) {
        int i = 0;
        final currentChannel = liveNotifier.stateSnapshot.selectedChannel;
        if (currentChannel != null) {
          i = b.indexOf(currentChannel);
          if (i == -1) {
            i = 0;
          }
        }
        verticalScrollController.jumpToItem(i);
      }
    });
    final channelList =
        ref.watch(liveControllerProvider.select((l) => l.channels));

    intl.NumberFormat formatter = intl.NumberFormat(
        List.filled(channelList.length.toString().length, '0').join());

    final currentChannelIndex =
        ref.watch(liveControllerProvider.select((l) => l.selectedChannelIndex));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ChannelListHeader(),
        Expanded(
          child: Focus(
            autofocus: true,
            focusNode: fn,
            onFocusChange: (value) {
              setState(() {
                focued = value;
              });
            },
            onKeyEvent: (node, event) {
              final itemIndex = verticalScrollController.selectedItem;

              if (event is! KeyUpEvent) {
                switch (event.logicalKey) {
                  case LogicalKeyboardKey.arrowUp:
                    // fn.requestFocus();
                    moveCursor(itemIndex - 1, channelList);
                    break;
                  case LogicalKeyboardKey.arrowDown:

                    // fn.requestFocus();
                    moveCursor(itemIndex + 1, channelList);
                    break;

                  case LogicalKeyboardKey.arrowRight:
                    if (!widget.visible) {}
                    final f = node.traversalDescendants.firstOrNull;
                    if (f != null) {
                      f.requestFocus();
                    }
                    break;
                  case LogicalKeyboardKey.arrowLeft:
                    if (!widget.visible) {
                      return KeyEventResult.handled;
                    }
                    if (!fn.hasPrimaryFocus) {
                      fn.requestFocus();
                      return KeyEventResult.handled;
                    }
                  case LogicalKeyboardKey.goBack:
                    if (!fn.hasPrimaryFocus) {
                      fn.requestFocus();

                      return KeyEventResult.handled;
                    } else {
                      if (liveNotifier
                          .stateSnapshot.searchChannels.isNotEmpty) {
                        liveNotifier.searchChannels('');
                        return KeyEventResult.handled;
                      }

                      if (channelList.contains(
                        liveNotifier.stateSnapshot.selectedChannel,
                      )) // this is when cat is favorite and channel is favorite
                      {
                        if (currentChannelIndex != itemIndex) {
                          verticalScrollController
                              .jumpToItem(currentChannelIndex);
                          return KeyEventResult.handled;
                        }
                      }
                    }

                    break;
                  case LogicalKeyboardKey.select:
                  case LogicalKeyboardKey.space:
                    if (widget.visible) {
                      if (currentChannelIndex != itemIndex) {
                        liveNotifier.selectChannel(channelList[itemIndex]);
                      } else {
                        widget.onSelect();
                        return KeyEventResult.handled;
                      }
                    } else {
                      verticalScrollController.jumpToItem(currentChannelIndex);
                    }

                  default:
                }
              }
              return KeyEventResult.ignored;
            },
            child: Row(
              children: [
                Expanded(
                  child: FadingEdgeScrollView.fromListWheelScrollView(
                    gradientFractionOnEnd: 0.5,
                    gradientFractionOnStart: 0.5,
                    child: ListWheelScrollView.useDelegate(
                      controller: verticalScrollController,
                      diameterRatio: 8,
                      squeeze: 0.8,
                      offAxisFraction: 1.5,
                      itemExtent: 40,
                      onSelectedItemChanged: (value) {
                        setState(() {});
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        builder: (context, index) {
                          final hovered =
                              verticalScrollController.selectedItem == index;

                          final selected = currentChannelIndex == index;
                          return ChannelTile(
                            hovered: hovered,
                            focued: focued,
                            selected: selected,
                            fn: fn,
                            formatter: formatter,
                            channelList: channelList,
                            index: index,
                          );
                        },
                        childCount: channelList.length,
                      ),
                    ),
                  ),
                ),
                if (widget.showEPG)
                  Expanded(
                    child: epgVisible
                        ? ChannelOptionsParent(
                            focused: !fn.hasPrimaryFocus,
                            focusable: fn.hasFocus,
                            currentChannel: currentChannelIndex ==
                                verticalScrollController.selectedItem,
                            hoverChanel: channelList[
                                verticalScrollController.selectedItem],
                          )
                        : const SizedBox.shrink(),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void moveCursor(int itemIndex, channelList) {
    if (!moving) {
      verticalScrollController
          .animateToItem(
            AppUtils.clamp(
              itemIndex,
              channelList.length,
            ),
            duration: Durations.short2,
            curve: Curves.easeInOut,
          )
          .then((_) => moving = false);
    }
    moving = true;
  }
}
