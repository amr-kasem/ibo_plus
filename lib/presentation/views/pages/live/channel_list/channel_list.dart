import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/ibo/isar/live_channel.dart';
import '../../../providers/app_state.dart';
import '../../../providers/live_state.dart';
import '../../../widgets/list_highlighter.dart';
import 'channel_list_header.dart';
import 'list/channel_list_remote_control.dart';

class ChannelList extends ConsumerWidget {
  const ChannelList({
    required this.visible,
    required this.onSelect,
    required this.scrollKey,
    super.key,
  });
  final bool visible;
  final VoidCallback onSelect;
  final PageStorageKey scrollKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<LiveChannel> channelList =
        ref.watch(liveControllerProvider.select((s) => s.channels));
    bool highlight = ref.watch(AppState.hideBar);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ChannelListHeader(),
        Expanded(
          child: Stack(
            children: [
              ListHighlighter(highlighted: channelList.isNotEmpty && highlight),
              ChannelListRemoteControl(
                channelList: channelList,
                visible: visible,
                onSelect: (channel) {
                  return ref
                      .read(liveControllerProvider.notifier)
                      .selectChannel(channel);
                },
                onClose: () {
                  onSelect();
                },
                scrollKey: scrollKey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
