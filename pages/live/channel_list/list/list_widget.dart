import 'package:collection/collection.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../lib/presentation/data/models/ibo/isar/live_channel.dart';
import '../../../../lib/presentation/views/providers/live_state.dart';
import '../options/channel_options_parent.dart';
import 'channel_tile.dart';

class ChannelListWidget extends ConsumerStatefulWidget {
  const ChannelListWidget({
    super.key,
    required this.verticalScrollController,
    required this.channelList,
    required this.showSettings,
    required this.scrollKey,
  });

  final FixedExtentScrollController verticalScrollController;
  final List<LiveChannel> channelList;
  final bool showSettings;
  final PageStorageKey scrollKey;

  @override
  ConsumerState<ChannelListWidget> createState() => _ChannelListWidgetState();
}

class _ChannelListWidgetState extends ConsumerState<ChannelListWidget> {
  late intl.NumberFormat formatter;
  bool initialized = false;
  @override
  void initState() {
    super.initState();
    formatter = intl.NumberFormat(
        List.filled(widget.channelList.length.toString().length, '0').join());
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(liveControllerProvider.select((s) => s.channels), (a, b) {
      final same = const ListEquality().equals(a, b);
      if (!same || !initialized) {
        initialized = true;
        int i = 0;
        final currentChannel = ref
            .read(liveControllerProvider.notifier)
            .stateSnapshot
            .selectedChannel;
        if (currentChannel != null) {
          i = b.indexOf(currentChannel);
          if (i == -1) {
            i = 0;
          }
        }
        widget.verticalScrollController.jumpToItem(i);
      }
    });
    return Row(
      children: [
        Expanded(
          child: FadingEdgeScrollView.fromListWheelScrollView(
            gradientFractionOnEnd: 0.5,
            gradientFractionOnStart: 0.5,
            child: ListWheelScrollView.useDelegate(
              key: widget.scrollKey,
              controller: widget.verticalScrollController,
              diameterRatio: 8,
              squeeze: 0.8,
              offAxisFraction: 1.5,
              itemExtent: 40,
              onSelectedItemChanged: (value) {
                ref
                    .read(liveControllerProvider.notifier)
                    .selectHoverChannel(widget.channelList[value]);
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  return ChannelTile(
                    formatter: formatter,
                    channel: widget.channelList[index],
                    index: index,
                  );
                },
                childCount: widget.channelList.length,
              ),
            ),
          ),
        ),
        Expanded(
          child: widget.showSettings
              ? const ChannelOptionsParent()
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
