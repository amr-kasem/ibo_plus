import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TwoLevelListController extends StatefulWidget {
  final Widget Function(
    Widget Function(
      BuildContext ctx,
      int i,
    ) secondryListBuilder,
    FixedExtentScrollController mainController,
    void Function(int i) notifyMainList,
    bool focused,
  ) mainListBuilder;
  final Widget Function(
    int i,
    FixedExtentScrollController secondryController,
    bool focused,
  ) secondryListBuilder;
  const TwoLevelListController({
    super.key,
    required this.mainListBuilder,
    required this.secondryListBuilder,
  });

  @override
  State<TwoLevelListController> createState() => TwoLevelListControllerState();
}

class TwoLevelListControllerState extends State<TwoLevelListController> {
  @override
  void dispose() {
    verticalController.dispose();
    for (var c in horizontalControllers) {
      c.dispose();
    }
    super.dispose();
  }

  bool moving = false;
  bool focused = false;
  final verticalController = FixedExtentScrollController();
  final horizontalControllers =
      List.generate(6, (i) => FixedExtentScrollController());
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
        child: widget.mainListBuilder(
          (ctx, i) =>
              widget.secondryListBuilder(i, horizontalControllers[i], focused),
          verticalController,
          (i) => setState(() {}),
          focused,
        ));
  }
}
