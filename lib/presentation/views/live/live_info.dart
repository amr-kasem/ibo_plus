import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/app_state.dart';
import 'category_list/category_list.dart';
import 'channel_list/channel_list.dart';

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
            if (event is KeyDownEvent && !visible) {
              setState(() {
                visible = true;
              });
            }
            if (event is KeyDownEvent && visible) {
              if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                return KeyEventResult.handled;
              } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                setState(() {
                  categories = Directionality.of(context) == TextDirection.ltr;
                  if (categories) {
                    Future.delayed(Duration.zero).then(
                      (_) {
                        fn.focusInDirection(TraversalDirection.left);
                      },
                    );
                  }
                });
              } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                setState(() {
                  categories = Directionality.of(context) != TextDirection.ltr;
                  if (categories) {
                    Future.delayed(Duration.zero).then(
                      (_) {
                        fn.focusInDirection(TraversalDirection.right);
                      },
                    );
                  }
                });
              } else if (event.logicalKey == LogicalKeyboardKey.goBack ||
                  event.logicalKey == LogicalKeyboardKey.escape) {
                if (!categories && visible) {
                  setState(() {
                    categories = true;
                    Future.delayed(Duration.zero).then(
                      (_) {
                        fn.focusInDirection(TraversalDirection.left);
                      },
                    );
                  });
                } else if (categories && visible) {
                  shouldExit = true;
                }
              }
            } else if (event is KeyUpEvent) {
              if (event.logicalKey == LogicalKeyboardKey.goBack ||
                  event.logicalKey == LogicalKeyboardKey.escape) {
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
            } else if (event is KeyRepeatEvent) {
              switch (event.logicalKey) {
                case LogicalKeyboardKey.arrowLeft:
                case LogicalKeyboardKey.arrowRight:
                  return KeyEventResult.handled;
                default:
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
                      : const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            'All Channels',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                ),
              ),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    AnimatedPositionedDirectional(
                      duration: Durations.medium1,
                      start: categories ? 0 : -600,
                      top: 0,
                      bottom: 0,
                      width: 600,
                      child: CategoryList(
                        showSettings: categories,
                        visible: fn.hasFocus && visible,
                        onSelect: () {
                          setState(() {
                            fn.traversalChildren.last.requestFocus();
                            categories = false;
                          });
                        },
                      ),
                    ),
                    AnimatedPositionedDirectional(
                      duration: Durations.medium1,
                      start: categories ? 600 : 0,
                      top: 0,
                      bottom: 0,
                      end: 0,
                      child: AnimatedOpacity(
                        duration: Durations.medium3,
                        opacity: categories ? 0.6 : 1,
                        child: ChannelList(
                          showEPG: !categories,
                          visible: fn.hasFocus && visible,
                          onSelect: () {
                            setState(() {
                              visible = false;
                            });
                          },
                        ),
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
