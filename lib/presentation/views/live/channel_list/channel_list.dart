import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../data/models/live_channel.dart';
import '../../../../utils/app_utils.dart';
import '../../../providers/live_state.dart';
import 'channel_options_parent.dart';

class ChannelList extends ConsumerWidget {
  const ChannelList({
    super.key,
    required this.showEPG,
    required this.onSelect,
    required this.visible,
  });
  final bool visible;
  final bool showEPG;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channelList = ref.watch(LiveState.liveChannels);

    return channelList.when(
      data: (channels) => ChannelsListView(
        channels: channels,
        showEPG: showEPG,
        visible: visible,
        onSelect: onSelect,
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
    required this.visible,
    required this.onSelect,
    super.key,
  });
  final List<LiveChannel> channels;
  final bool showEPG;
  final bool visible;
  final VoidCallback onSelect;

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
    epgTimer = Timer(Durations.short2, () {
      if (mounted) {
        setState(() {
          epgVisible = true;
        });
      }
    });
    ref.read(LiveState.currentChannelIndex.future).then((i) async {
      final cha = await ref.read(LiveState.currentChannel.future);
      final catId = ref.read(LiveState.hoverCategory)?.categoryId;
      final chaId = int.tryParse(cha?.categoryId ?? '');
      if (catId == chaId || // this is when channel belongs to category
              catId == null || // this is when category is all channels
              (catId == -1 &&
                  (cha?.isFavorite ??
                      false)) // this is when cat is favorite and channel is favorite

          ) {
        verticalScrollController.jumpToItem(i);
      }
    });
    super.initState();
  }

  late final changeChannel = ref.read(LiveState.selectChannel);

  @override
  Widget build(BuildContext context) {
    intl.NumberFormat formatter = intl.NumberFormat(
        List.filled(widget.channels.length.toString().length, '0').join());

    final channelList = widget.channels
        .where((element) => element.name.contains(ref.watch(LiveState.search)))
        .toList();
    final currentChannelIndex = ref
        .watch(LiveState.currentChannelIndex)
        .when(data: (d) => d, error: (_, __) => null, loading: () => null);
    return Focus(
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
              if (!moving) {
                verticalScrollController
                    .animateToItem(
                      AppUtils.clamp(
                        itemIndex - 1,
                        widget.channels.length,
                      ),
                      duration: Durations.short2,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
              break;
            case LogicalKeyboardKey.arrowDown:

              // fn.requestFocus();
              if (!moving) {
                verticalScrollController
                    .animateToItem(
                      AppUtils.clamp(
                        itemIndex + 1,
                        widget.channels.length,
                      ),
                      duration: Durations.short2,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
              break;

            case LogicalKeyboardKey.arrowRight:
              final f = node.traversalDescendants.firstOrNull;
              if (f != null) {
                f.requestFocus();
              }
              break;

            case LogicalKeyboardKey.goBack:
              if (!fn.hasPrimaryFocus) {
                fn.requestFocus();

                return KeyEventResult.handled;
              } else {
                if (currentChannelIndex != itemIndex) {
                  verticalScrollController.jumpToItem(currentChannelIndex ?? 0);
                  return KeyEventResult.handled;
                }
              }

              break;
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              if (widget.visible) {
                if (currentChannelIndex != itemIndex) {
                  changeChannel(channelList[itemIndex]);
                } else {
                  widget.onSelect();
                  return KeyEventResult.handled;
                }
              } else {
                verticalScrollController.jumpToItem(currentChannelIndex ?? 0);
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
                onSelectedItemChanged: (_) => setState(() {}),
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    final hovered =
                        verticalScrollController.selectedItem == index;
                    final selected = currentChannelIndex == index;

                    return Container(
                      margin: const EdgeInsetsDirectional.only(start: 20),
                      decoration: hovered && focued || selected
                          ? BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  fn.hasPrimaryFocus || selected
                                      ? selected
                                          ? Colors.orange.withOpacity(0.5)
                                          : Colors.amber.withOpacity(0.15)
                                      : Colors.amber.withOpacity(0.07),
                                  Colors.transparent,
                                ],
                                stops: [0, selected ? 0.6 : 0.35],
                              ),
                              border: GradientBoxBorder(
                                width: 3,
                                gradient: LinearGradient(
                                  colors: [
                                    (fn.hasPrimaryFocus && hovered) || selected
                                        ? !hovered
                                            ? Colors.orange.withOpacity(0.3)
                                            : Colors.amber
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
                          const SizedBox(width: 8),
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
                          Expanded(
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
                        ],
                      ),
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
                    )
                  : const SizedBox.shrink(),
            ),
        ],
      ),
    );
  }
}
