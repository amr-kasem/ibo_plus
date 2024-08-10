import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../utils/app_utils.dart';

class CategoryOptions extends StatefulWidget {
  const CategoryOptions({
    super.key,
    required this.focused,
    required this.updateViewIndex,
    required this.currentCategory,
  });
  final void Function(int index) updateViewIndex;
  final bool focused;
  final bool currentCategory;
  @override
  State<CategoryOptions> createState() => _CategoryOptionsState();
}

class _CategoryOptionsState extends State<CategoryOptions> {
  final horizontalController = FixedExtentScrollController(initialItem: 1);
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
    final List<Widget> text = [
      const Text(
        'Search',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      const Text(
        'Favorite',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      const Text(
        'Settings',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ];

    final List<Widget> icons = [
      const Icon(Icons.search),
      const Icon(Icons.favorite_border),
      const Icon(Icons.settings),
    ];
    return Focus(
      onFocusChange: (_) {
        setState(() {});
        horizontalController.animateToItem(
          1,
          duration: Durations.short3,
          curve: Curves.bounceInOut,
        );
      },
      focusNode: fn,
      autofocus: widget.focused,
      onKeyEvent: (node, event) {
        if (event is! KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
            case LogicalKeyboardKey.arrowDown:
              horizontalController
                  .animateToItem(
                    AppUtils.clamp(
                      1,
                      icons.length,
                    ),
                    duration: Durations.medium1,
                    curve: Curves.easeInOut,
                  )
                  .then((_) => moving = false);
            case LogicalKeyboardKey.arrowLeft:
              if (!moving) {
                horizontalController
                    .animateToItem(
                      AppUtils.clamp(
                        horizontalController.selectedItem - 1,
                        icons.length,
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
                        icons.length,
                      ),
                      duration: Durations.medium1,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
              return KeyEventResult.handled;
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              widget.updateViewIndex(horizontalController.selectedItem);
              return KeyEventResult.handled;

            default:
          }
        } else {
          if (event.logicalKey == LogicalKeyboardKey.goBack) {
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          SizedBox(
            height: 50,
            child: RotatedBox(
              quarterTurns: -1,
              child: FadingEdgeScrollView.fromListWheelScrollView(
                gradientFractionOnStart: 0.2,
                gradientFractionOnEnd: 0.2,
                child: ListWheelScrollView.useDelegate(
                  controller: horizontalController,
                  diameterRatio: 10,
                  onSelectedItemChanged: (value) => setState(() {}),
                  itemExtent: 50,
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
                            margin: const EdgeInsets.all(8),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: Colors.black45,
                              child: icons[j],
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: text.length,
                  ),
                ),
              ),
            ),
          ),
          AnimatedSwitcher(
            duration: Durations.short4,
            child: fn.hasFocus && widget.focused
                ? FutureBuilder(
                    future: Future.delayed(Duration.zero),
                    builder: (context, s) {
                      return s.connectionState == ConnectionState.done
                          ? SizedBox(
                              height: 30,
                              child: text[horizontalController.selectedItem],
                            )
                          : const SizedBox(height: 30);
                    },
                  )
                : const SizedBox(height: 30),
          ),
        ],
      ),
    );
  }
}
