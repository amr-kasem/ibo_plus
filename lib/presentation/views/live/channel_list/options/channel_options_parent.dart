import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../data/models/live_channel.dart';
import 'audio_list.dart';
import 'channel_options.dart';
import 'channel_settings.dart';
import 'epg_list.dart';
import 'screen_fit_options.dart';
import 'search_channels.dart';
import 'subtitles_list.dart';

class ChannelOptionsParent extends StatefulWidget {
  const ChannelOptionsParent({
    super.key,
    required this.focused,
    required this.focusable,
    required this.currentChannel,
    required this.hoverChanel,
  });
  final bool focused;
  final bool focusable;
  final bool currentChannel;
  final LiveChannel hoverChanel;
  @override
  State<ChannelOptionsParent> createState() => _ChannelOptionsState();
}

class _ChannelOptionsState extends State<ChannelOptionsParent> {
  void updateState(int i) {
    setState(() {
      index = i;
    });
  }

  int index = 1;
  final fsn = FocusScopeNode();
  @override
  Widget build(BuildContext context) {
    late List<Widget> views = [
      SearchChannels(
        goBack: () => updateState(1),
      ),
      ChannelOptions(
        focused: widget.focused,
        updateViewIndex: updateState,
        currentChannel: widget.currentChannel,
        hoverChannel: widget.hoverChanel,
      ),
      if (widget.currentChannel) const AudioList(),
      if (widget.currentChannel) const SubtitlesList(),
      EpgList(focued: widget.focused),
      ScreenFitOptions(focused: widget.focused),
      ChannelSettings(focused: widget.focused)
    ];
    return Focus(
      skipTraversal: true,
      descendantsAreFocusable: widget.focusable,
      child: FocusScope(
        node: fsn,
        skipTraversal: true,
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.goBack ||
                event.logicalKey == LogicalKeyboardKey.escape) {
              if (index == 1) return KeyEventResult.ignored;
              setState(() {
                index = 1;
              });

              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        onFocusChange: (f) {
          if (!f) {
            setState(() {
              index = 1;
            });
          }
        },
        child:
            AnimatedSwitcher(duration: Durations.short1, child: views[index]),
      ),
    );
  }
}
