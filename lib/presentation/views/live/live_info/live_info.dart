import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/app_state.dart';
import 'live_info_remote_control.dart';
import 'live_info_widget.dart';

class LiveInfo extends StatefulWidget {
  const LiveInfo({super.key});

  @override
  State<LiveInfo> createState() => _LiveInfoState();
}

class _LiveInfoState extends State<LiveInfo> {
  bool categories = false;
  bool visible = false;
  PageStorageKey channelListScrollKey =
      const PageStorageKey('channelListScrollKey');
  PageStorageKey categoryListScrollKey =
      const PageStorageKey('categoryListScrollKey');

  Timer? infoTimer;
  @override
  Widget build(BuildContext context) {
    return InfoRemoteControl(
      setInfoVisibility: (bool visible) {
        final res = this.visible != visible;
        if (res) {
          setState(() {
            this.visible = true;
          });
        }
        return res;
      },
      setInfoMode: (bool categories) {
        if (this.categories != categories) {
          setState(() {
            this.categories = categories;
          });
        }
        return this.categories != categories;
      },
      infoWidget: Consumer(
        builder: (_, WidgetRef ref, child) {
          final traversalBarFocused = ref.watch(AppState.traversalBar);
          visible = !traversalBarFocused && visible;
          return AnimatedOpacity(
            duration: Durations.medium3,
            opacity: visible ? 1 : 0,
            child: InfoWidget(
              categories: categories,
              visible: visible,
              onSelectChannel: () {
                if (categories) return;
                setState(() {
                  visible = false;
                });
              },
              onSelectCategory: () {
                setState(() {
                  categories = false;
                });
              },
              channelListScrollKey: channelListScrollKey,
              categoryListScrollKey: categoryListScrollKey,
            ),
          );
        },
      ),
    );
  }
}
