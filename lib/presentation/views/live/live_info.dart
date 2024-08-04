import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/app_state.dart';
import '../../providers/live_state.dart';
import '../../widgets/search_field_extension.dart';
import 'category_list.dart';
import 'channel_list.dart';

class LiveInfo extends ConsumerStatefulWidget {
  const LiveInfo({super.key});

  @override
  ConsumerState<LiveInfo> createState() => _LiveInfoState();
}

class _LiveInfoState extends ConsumerState<LiveInfo> {
  bool categories = false;
  bool visible = false;
  bool shouldExit = false;
  Timer? infoTimer;
  final fn = FocusNode();
  @override
  Widget build(BuildContext context) {
    final searchNotifier = ref.read(LiveState.search.notifier);
    return AnimatedOpacity(
      duration: Durations.medium3,
      opacity: fn.hasFocus && visible ? 1 : 0,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
          start: 8,
          top: 8,
          bottom: 8,
          end: 8,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black87,
              Colors.transparent,
            ],
            stops: [0.2, 1],
          ),
        ),
        child: Focus(
          skipTraversal: true,
          focusNode: fn,
          onFocusChange: (value) {
            setState(() {});
            final traversalBarNotifier =
                ref.read(AppState.traversalBar.notifier);
            if (value) {
              if (traversalBarNotifier.state) {
                traversalBarNotifier.update((_) => false);
              }
            } else {
              if (!traversalBarNotifier.state) {
                traversalBarNotifier.update((_) => true);
              }
            }
          },
          onKeyEvent: (node, event) {
            if (event is KeyDownEvent && visible) {
              if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                setState(() {
                  categories = Directionality.of(context) == TextDirection.ltr;
                });
              } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                setState(() {
                  categories = Directionality.of(context) != TextDirection.ltr;
                });
              } else if (event.logicalKey == LogicalKeyboardKey.goBack) {
                if (!categories && visible) {
                  setState(() {
                    categories = true;
                  });
                } else if (categories && visible) {
                  shouldExit = true;
                }
              }
            } else if (event is KeyDownEvent && !visible) {
              setState(() {
                visible = true;
              });
              return KeyEventResult.handled;
            } else if (event is KeyUpEvent) {
              if (event.logicalKey == LogicalKeyboardKey.goBack) {
                if (shouldExit) {
                  setState(() {
                    visible = false;
                    categories = false;
                  });
                  shouldExit = false;
                  return KeyEventResult.ignored;
                }
                return KeyEventResult.handled;
              }
            }
            return KeyEventResult.ignored;
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: AnimatedSwitcher(
                  duration: Durations.medium1,
                  child: categories
                      ? const SizedBox.shrink()
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                                onChanged: (v) =>
                                    searchNotifier.update((_) => v),
                              ).getSearchWidget(
                                title: Row(
                                  children: [
                                    AnimatedSwitcher(
                                      duration: Durations.medium1,
                                      child: categories
                                          ? const SizedBox.shrink()
                                          : const Icon(
                                              Icons.chevron_left,
                                              size: 40,
                                            ),
                                    ),
                                    const Text(
                                      'All Channels',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    AnimatedPositionedDirectional(
                      duration: Durations.medium1,
                      start: categories ? 0 : -300,
                      width: 300,
                      top: 0,
                      bottom: 0,
                      child: const CategoriesList(),
                    ),
                    AnimatedPositionedDirectional(
                      duration: Durations.medium1,
                      start: categories ? 300 : 0,
                      top: 0,
                      bottom: 0,
                      end: 0,
                      child: ChannelList(
                        showEPG: !categories,
                        onSelect: () {
                          setState(() {
                            visible = false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
