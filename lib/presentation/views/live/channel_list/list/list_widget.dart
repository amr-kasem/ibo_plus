import 'package:collection/collection.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../../data/models/live_channel.dart';
import '../../../../providers/live_state.dart';
import '../options/channel_options_parent.dart';
import 'channel_tile.dart';

class ChannelListWidget extends ConsumerWidget {
  const ChannelListWidget({
    super.key,
    required this.verticalScrollController,
    required this.channelList,
  });

  final FixedExtentScrollController verticalScrollController;
  final List<LiveChannel> channelList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    intl.NumberFormat formatter = intl.NumberFormat(
        List.filled(channelList.length.toString().length, '0').join());
    ref.listen(liveControllerProvider.select((s) => s.channels), (a, b) {
      final same = const ListEquality().equals(a, b);
      if (!same) {
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
        if (verticalScrollController.hasClients) {
          verticalScrollController.jumpToItem(i);
        }
      }
    });
    return Row(
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
                // setState(() {});

                // late final catId = liveNotifier
                //     .stateSnapshot.selectedCategory?.categoryId;
                // if (int.tryParse(channelList[currentChannelIndex]
                //                 .categoryId ??
                //             '') ==
                //         catId &&
                //     fn.hasFocus) {
                //   if (!fn.hasPrimaryFocus) {
                //     liveNotifier.selectChannel(channelList[value]);
                //   } else {
                //     visibilityTimer?.cancel();
                //     visibilityTimer = Timer(
                //       const Duration(seconds: 4),
                //       () {
                //         liveNotifier
                //             .selectChannel(channelList[value]);
                //         visibilityTimer = Timer(
                //           const Duration(seconds: 4),
                //           () {
                //             widget.onSelect();
                //           },
                //         );
                //       },
                //     );
                //   }
                // }
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  return ChannelTile(
                    formatter: formatter,
                    channel: channelList[index],
                    index: index,
                  );
                },
                childCount: channelList.length,
              ),
            ),
          ),
        ),
        Expanded(
          child: ChannelOptionsParent(
            getHoverChannel: () =>
                channelList[verticalScrollController.selectedItem],
          ),
        ),
      ],
    );
  }
}
