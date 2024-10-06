import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../../../domain/entities/live_channel/live_channel.dart';
import '../../../../controllers/app_state.dart';
import '../../../../controllers/live_controller.dart';
import '../../../widgets/list_highlighter.dart';
import 'channel_list_header.dart';
import 'list/channel_list_remote_control.dart';

class ChannelList extends ConsumerWidget {
  ChannelList({
    required this.visible,
    required this.onSelect,
    required this.scrollKey,
    super.key,
  });
  final bool visible;
  final VoidCallback onSelect;
  final PageStorageKey scrollKey;
  final _locator = GetIt.instance;
  late final _logger = _locator.get<Logger>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<LiveChannel> channelList =
        ref.watch(liveControllerProvider.select((s) => s.channels));
    bool highlight = ref.watch(AppState.hideBar);
    _logger.i("ChannelList to be rednered has ${channelList.length} channels");
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
