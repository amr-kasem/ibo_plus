import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TwoLevelListController<T> extends StatefulWidget {
  final Widget Function(
    Widget Function(
      BuildContext ctx,
      T item,
      int idx,
    ) secondryListBuilder,
    FixedExtentScrollController mainController,
    void Function(int i) notifyMainList,
    bool focused,
  ) mainListBuilder;
  final Widget Function(
    T item,
    void Function(FixedExtentScrollController appendController),
    bool focused,
  ) secondryListBuilder;
  const TwoLevelListController({
    super.key,
    required this.mainListBuilder,
    required this.secondryListBuilder,
  });

  @override
  State<TwoLevelListController<T>> createState() =>
      TwoLevelListControllerState<T>();
}

class TwoLevelListControllerState<T> extends State<TwoLevelListController<T>> {
  @override
  void dispose() {
    verticalController.dispose();
    for (var controller in secondaryControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  bool moving = false;
  bool focused = false;
  final verticalController = FixedExtentScrollController();
  Map<int, FixedExtentScrollController> secondaryControllers = {};
  @override
  Widget build(BuildContext context) {
    return Focus(
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
                        clampDouble(verticalController.selectedItem - 1, 0,
                                double.infinity)
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
                        clampDouble(
                          verticalController.selectedItem + 1,
                          0,
                          double.infinity,
                        ).toInt(),
                        duration: Durations.medium1,
                        curve: Curves.easeInOut,
                      )
                      .then((_) => moving = false);
                }

                return KeyEventResult.handled;

              case LogicalKeyboardKey.arrowLeft:
                if (!moving) {
                  final hc =
                      secondaryControllers[verticalController.selectedItem];
                  moving = true;
                  hc
                      ?.animateToItem(
                        clampDouble(hc.selectedItem - 1, 0, double.infinity)
                            .toInt(),
                        duration: Durations.medium1,
                        curve: Curves.easeInOut,
                      )
                      .then((_) => moving = false);
                }
                return KeyEventResult.handled;

              case LogicalKeyboardKey.arrowRight:
                if (!moving) {
                  final hc =
                      secondaryControllers[verticalController.selectedItem];
                  moving = true;
                  hc
                      ?.animateToItem(
                        clampDouble(hc.selectedItem + 1, 0, double.infinity)
                            .toInt(),
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
        child: widget.mainListBuilder(
          (ctx, T item, int idx) => widget.secondryListBuilder(
            item,
            (controller) => secondaryControllers[idx] = controller,
            focused,
          ),
          verticalController,
          (i) => setState(() {}),
          focused,
        ));
  }
}
