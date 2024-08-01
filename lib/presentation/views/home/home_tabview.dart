import 'dart:ui';

import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Category #${widget.category}',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Expanded(
          child: RotatedBox(
            quarterTurns: -1,
            child: FadingEdgeScrollView.fromListWheelScrollView(
              gradientFractionOnStart: 0.5,
              gradientFractionOnEnd: 0.5,
              child: ListWheelScrollView.useDelegate(
                key: PageStorageKey<int>(widget.category),
                controller: widget.horizontalController,
                diameterRatio: 8,
                useMagnifier: true,
                offAxisFraction: 1.5,
                onSelectedItemChanged: (value) => setState(() {}),
                itemExtent: 120,
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, j) {
                    final selected =
                        j == widget.horizontalController.selectedItem &&
                            widget.focused;

                    return RotatedBox(
                      quarterTurns: 1,
                      child: AnimatedScale(
                        duration: Durations.medium1,
                        alignment: Alignment.center,
                        scale: selected ? 1.1 : 1,
                        child: AnimatedContainer(
                          duration: Durations.medium2,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  selected ? Colors.amber : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          padding: const EdgeInsets.all(2),
                          margin: const EdgeInsets.all(8),
                          width: 120,
                          height: 170,
                          child: Image.network(
                            'https://www.vintagemovieposters.co.uk/wp-content/uploads/2023/03/IMG_1887-scaled.jpeg',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
