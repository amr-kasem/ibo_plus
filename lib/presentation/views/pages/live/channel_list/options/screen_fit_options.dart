import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../utils/listing_utils.dart';

class ScreenFitOptions extends StatefulWidget {
  const ScreenFitOptions({
    super.key,
    required this.focused,
  });
  final bool focused;
  @override
  State<ScreenFitOptions> createState() => _ScreenFitOptionsState();
}

class _ScreenFitOptionsState extends State<ScreenFitOptions> {
  final horizontalController = FixedExtentScrollController();
  final fn = FocusNode();
  bool moving = false;

  @override
  void dispose() {
    horizontalController.dispose();
    fn.dispose();
    super.dispose();
  }

  final List<Widget> text = [
    const Text(
      'Cover',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    const Text(
      'Stretch',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    const Text(
      'Contain',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  ];
  final List<Widget> icons = const [
    Icon(Icons.fit_screen),
    Icon(Icons.image_aspect_ratio_sharp),
    Icon(Icons.fit_screen_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: widget.focused,
      onFocusChange: (_) {
        setState(() {});
      },
      focusNode: fn,
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
                      ListingUtils.clamp(
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
                      ListingUtils.clamp(
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
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              // widget.updateViewIndex(horizontalController.selectedItem + 1);
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
            top: -8,
            bottom: -8,
            left: -100,
            right: -100,
            child: RotatedBox(
              quarterTurns: -1,
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification overscroll) {
                  // overscroll.disallowIndicator();
                  return true;
                },
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
          ),
          Positioned(
            bottom: -38,
            left: 0,
            right: 0,
            height: 30,
            child: Center(
              child: AnimatedSwitcher(
                duration: Durations.short4,
                child: fn.hasFocus && widget.focused
                    ? FutureBuilder(
                        future: Future.delayed(Duration.zero),
                        builder: (context, s) {
                          return s.connectionState == ConnectionState.done
                              ? text[horizontalController.selectedItem]
                              : const SizedBox.shrink();
                        })
                    : const SizedBox.shrink(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
