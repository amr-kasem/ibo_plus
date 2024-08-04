import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart' as intl;

import '../../../data/models/live_channel.dart';
import '../../../utils/app_utils.dart';
import '../../providers/live_state.dart';
import 'epg_list.dart';

class ChannelList extends ConsumerWidget {
  const ChannelList({
    super.key,
    required this.showEPG,
    required this.onSelect,
  });

  final bool showEPG;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channelList = ref.watch(LiveState.liveChannels);

    return channelList.when(
      data: (channels) => ChannelsListView(
        channels: channels,
        showEPG: showEPG,
      ),
      error: (e, s) => Center(
        child: Text('$e,$s'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class ChannelsListView extends ConsumerStatefulWidget {
  const ChannelsListView({
    required this.channels,
    required this.showEPG,
    super.key,
  });
  final List<LiveChannel> channels;
  final bool showEPG;

  @override
  ConsumerState<ChannelsListView> createState() => _ChannelsListViewState();
}

class _ChannelsListViewState extends ConsumerState<ChannelsListView> {
  final verticalScrollController = FixedExtentScrollController();
  bool focued = false;
  final fn = FocusNode();
  bool epgVisible = false;
  Timer? epgTimer;
  bool moving = false;
  @override
  void initState() {
    epgTimer = Timer(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          epgVisible = true;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    intl.NumberFormat formatter = intl.NumberFormat(
        List.filled(widget.channels.length.toString().length, '0').join());

    final channelList = widget.channels
        .where((element) => element.name.contains(ref.watch(LiveState.search)))
        .toList();
    return Focus(
      autofocus: true,
      focusNode: fn,
      onFocusChange: (value) {
        setState(() {
          focued = value;
        });
      },
      onKeyEvent: (node, event) {
        if (event is! KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
              setState(() {
                epgVisible = false;
              });
              epgTimer?.cancel();
              epgTimer = Timer(const Duration(seconds: 1), () {
                setState(() {
                  epgVisible = true;
                });
              });
              if (!moving) {
                verticalScrollController
                    .animateToItem(
                      AppUtils.clamp(
                        verticalScrollController.selectedItem - 1,
                        widget.channels.length,
                      ),
                      duration: Durations.medium1,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
              return KeyEventResult.handled;
            case LogicalKeyboardKey.arrowDown:
              setState(() {
                epgVisible = false;
              });
              epgTimer?.cancel();
              epgTimer = Timer(const Duration(seconds: 1), () {
                setState(() {
                  epgVisible = true;
                });
              });
              if (!moving) {
                verticalScrollController
                    .animateToItem(
                      AppUtils.clamp(
                        verticalScrollController.selectedItem + 1,
                        widget.channels.length,
                      ),
                      duration: Durations.medium1,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
              return KeyEventResult.handled;

            case LogicalKeyboardKey.arrowRight:
              final f = node.traversalChildren.firstOrNull;
              if (f != null) {
                f.requestFocus();
                return KeyEventResult.handled;
              }

            default:
          }
        }
        return KeyEventResult.ignored;
      },
      child: FadingEdgeScrollView.fromListWheelScrollView(
        gradientFractionOnEnd: 0.5,
        gradientFractionOnStart: 0.5,
        child: ListWheelScrollView.useDelegate(
          controller: verticalScrollController,
          diameterRatio: 8,
          squeeze: 0.8,
          offAxisFraction: 0.5,
          itemExtent: 40,
          onSelectedItemChanged: (_) => setState(() {}),
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              final selected = verticalScrollController.selectedItem == index;
              return Container(
                decoration: selected && focued
                    ? BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            fn.hasPrimaryFocus
                                ? Colors.amber.withOpacity(0.15)
                                : Colors.amber.withOpacity(0.07),
                            Colors.transparent,
                          ],
                          stops: const [0, 0.356],
                        ),
                        border: GradientBoxBorder(
                          width: 3,
                          gradient: LinearGradient(
                            colors: [
                              fn.hasPrimaryFocus
                                  ? Colors.amber
                                  : Colors.amber.withOpacity(0.3),
                              Colors.transparent,
                            ],
                            stops: const [0, 0.5],
                          ),
                        ),
                      )
                    : null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16),
                    Text(
                      formatter.format(index + 1),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    CachedNetworkImage(
                      imageUrl: channelList[index].streamIcon ?? '',
                      errorWidget: (context, url, error) =>
                          const SizedBox.shrink(),
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 350,
                      child: Text(
                        channelList[index].name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: Durations.medium2,
                        child: verticalScrollController.selectedItem == index &&
                                epgVisible &&
                                widget.showEPG
                            ? EpgList(focued: focued)
                            : const SizedBox.shrink(),
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: channelList.length,
          ),
        ),
      ),
    );
  }
}
