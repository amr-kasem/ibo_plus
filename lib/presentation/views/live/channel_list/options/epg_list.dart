import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../utils/app_utils.dart';

class EpgList extends StatefulWidget {
  const EpgList({
    super.key,
    required this.focued,
  });

  final bool focued;
  @override
  State<EpgList> createState() => _EpgListState();
}

class _EpgListState extends State<EpgList> {
  final horizontalController = FixedExtentScrollController();
  final fn = FocusNode();
  bool moving = false;

  @override
  void dispose() {
    horizontalController.dispose();
    fn.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (_) => setState(() {}),
      focusNode: fn,
      autofocus: widget.focued,
      onKeyEvent: (node, event) {
        if (event is! KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowLeft:
              if (horizontalController.selectedItem == 0 &&
                  Directionality.of(context) == TextDirection.ltr) {
                node.parent?.requestFocus();
                return KeyEventResult.handled;
              }

              if (!moving) {
                horizontalController
                    .animateToItem(
                      AppUtils.clamp(
                        horizontalController.selectedItem - 1,
                        20,
                      ),
                      duration: Durations.medium1,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
              return KeyEventResult.handled;
            case LogicalKeyboardKey.arrowRight:
              if (horizontalController.selectedItem == 0 &&
                  Directionality.of(context) == TextDirection.rtl) {
                node.parent?.requestFocus();
                return KeyEventResult.handled;
              }

              if (!moving) {
                horizontalController
                    .animateToItem(
                      AppUtils.clamp(
                        horizontalController.selectedItem + 1,
                        20,
                      ),
                      duration: Durations.medium1,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
              return KeyEventResult.handled;

            default:
          }
        } else {
          if (event.logicalKey == LogicalKeyboardKey.goBack ||
              event.logicalKey == LogicalKeyboardKey.escape) {
            node.parent?.requestFocus();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: -100,
            right: -100,
            child: RotatedBox(
              quarterTurns: -1,
              child: FadingEdgeScrollView.fromListWheelScrollView(
                gradientFractionOnStart: 0.2,
                gradientFractionOnEnd: 0.2,
                child: ListWheelScrollView.useDelegate(
                  controller: horizontalController,
                  diameterRatio: 10,
                  onSelectedItemChanged: (value) => setState(() {}),
                  itemExtent: 240,
                  offAxisFraction: 0.0,
                  childDelegate: ListWheelChildBuilderDelegate(
                    builder: (context, j) {
                      final selected = j == horizontalController.selectedItem;

                      return RotatedBox(
                        quarterTurns: 1,
                        child: AnimatedScale(
                          duration: Durations.medium1,
                          alignment: Alignment.center,
                          scale: fn.hasFocus && selected ? 1.1 : 1,
                          child: AnimatedContainer(
                            duration: Durations.medium2,
                            decoration: BoxDecoration(
                              color: selected && fn.hasFocus
                                  ? Colors.amber.withOpacity(0.07)
                                  : Colors.transparent,
                              border: Border.all(
                                color: selected && fn.hasFocus
                                    ? Colors.amber
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                            padding: const EdgeInsets.all(2),
                            margin: const EdgeInsets.all(8),
                            width: 240,
                            height: 80,
                            child: Container(
                              color: Colors.black26,
                              child: Text('EPG TILE $j'),
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
      ),
    );
  }
}
