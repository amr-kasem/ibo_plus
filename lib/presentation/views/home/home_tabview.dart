import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../movies/movies_grid.dart';

class HomeTabView extends ConsumerStatefulWidget {
  const HomeTabView({super.key});

  @override
  ConsumerState<HomeTabView> createState() => _HomeTabViewState();
}

class _HomeTabViewState extends ConsumerState<HomeTabView> {
  final verticalController = FixedExtentScrollController();
  final horizontalControllers =
      List.generate(6, (i) => FixedExtentScrollController());

  @override
  void dispose() {
    verticalController.dispose();
    for (var c in horizontalControllers) {
      c.dispose();
    }
    super.dispose();
  }

  final initialPositions = <int, int>{};

  bool moving = false;
  bool focused = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Focus(
        onKeyEvent: (node, event) {
          if (event is! KeyUpEvent) {
            switch (event.logicalKey) {
              case LogicalKeyboardKey.arrowUp:
                if (event is! KeyRepeatEvent &&
                    verticalController.selectedItem == 0) {
                  return KeyEventResult.ignored;
                }

                if (!moving) {
                  moving = true;
                  verticalController
                      .animateToItem(
                        clampDouble(verticalController.selectedItem - 1, 0, 5)
                            .toInt(),
                        duration: Durations.medium1,
                        curve: Curves.easeInOut,
                      )
                      .then((_) => moving = false);
                }
                return KeyEventResult.handled;

              case LogicalKeyboardKey.arrowDown:
                if (!moving) {
                  moving = true;
                  verticalController
                      .animateToItem(
                        clampDouble(verticalController.selectedItem + 1, 0, 5)
                            .toInt(),
                        duration: Durations.medium1,
                        curve: Curves.easeInOut,
                      )
                      .then((_) => moving = false);
                }

                return KeyEventResult.handled;

              case LogicalKeyboardKey.arrowLeft:
                if (!moving) {
                  final hc =
                      horizontalControllers[verticalController.selectedItem];
                  moving = true;
                  hc
                      .animateToItem(
                        clampDouble(hc.selectedItem - 1, 0, 19).toInt(),
                        duration: Durations.medium1,
                        curve: Curves.easeInOut,
                      )
                      .then((_) => moving = false);
                }
                return KeyEventResult.handled;

              case LogicalKeyboardKey.arrowRight:
                if (!moving) {
                  final hc =
                      horizontalControllers[verticalController.selectedItem];
                  moving = true;
                  hc
                      .animateToItem(
                        clampDouble(hc.selectedItem + 1, 0, 19).toInt(),
                        duration: Durations.medium1,
                        curve: Curves.easeInOut,
                      )
                      .then((_) => moving = false);
                }
                return KeyEventResult.handled;
            }
            return KeyEventResult.ignored;
          } else {
            return KeyEventResult.handled;
          }
        },
        onFocusChange: (f) {
          setState(() {
            focused = f;
          });
        },
        child: ListWheelScrollView.useDelegate(
          clipBehavior: Clip.antiAlias,
          controller: verticalController,
          itemExtent: 204,
          diameterRatio: 4,
          squeeze: 0.6,
          onSelectedItemChanged: (value) => setState(() {}),
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, i) {
              return HorizontalList(
                focused: focused,
                horizontalController: horizontalControllers[i],
                category: i,
              );
            },
            childCount: 6,
          ),
        ),
      ),
    );
  }
}

class HorizontalList extends StatefulWidget {
  const HorizontalList({
    super.key,
    required this.horizontalController,
    required this.category,
    required this.focused,
  });

  final FixedExtentScrollController horizontalController;
  final int category;
  final bool focused;

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return const MoviesGrid();
  }
}
