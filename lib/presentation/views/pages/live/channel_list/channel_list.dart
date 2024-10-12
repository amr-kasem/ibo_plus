import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../../../domain/entities/live_channel/live_channel.dart';
import '../../../../controllers/app_controller.dart';
import '../../../../state_providers/live_states.dart';
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
  late final _liveStates = _locator.get<LiveStates>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channelListAsync = ref.watch(_liveStates.items);

    return channelListAsync.when(
      data: (channelList) {
        bool highlight = ref.watch(AppState.hideBar);
        _logger
            .i("ChannelList to be rednered has ${channelList.length} channels");
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChannelListHeader(),
            Expanded(
              child: Stack(
                children: [
                  ListHighlighter(
                      highlighted: channelList.isNotEmpty && highlight),
                  ChannelListRemoteControl(
                    channelList: channelList,
                    visible: visible,
                    onSelect: (channel) {
                      // return ref
                      //     .read(liveControllerProvider.notifier)
                      //     .selectChannel(channel);
                      return false;
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
      },
      error: (e, s) {
        _logger.e('Error Getting Categories', error: e, stackTrace: s);
        return Text('Error Getting Categories');
      },
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
