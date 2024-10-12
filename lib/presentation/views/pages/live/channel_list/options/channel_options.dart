import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../utils/listing_utils.dart';

class ChannelOptions extends ConsumerStatefulWidget {
  const ChannelOptions({
    super.key,
    required this.focused,
    required this.updateViewIndex,
  });
  final void Function(int index) updateViewIndex;
  final bool focused;
  @override
  ConsumerState<ChannelOptions> createState() => _ChannelOptionsState();
}

class _ChannelOptionsState extends ConsumerState<ChannelOptions> {
  final horizontalController = FixedExtentScrollController(initialItem: 1);
  final fn = FocusNode();
  bool moving = false;
  // late final toggleFavorite =
  //     ref.read(liveControllerProvider.notifier).toggleFavoriteChannel;

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
        'Audio tracks',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      const Text(
        'Subtitles',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      const Text(
        'TV guide',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      const Text(
        'Screen fit',
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
      Consumer(
        builder: (_, WidgetRef r, __) {
          // r.watch(liveControllerProvider.select((s) => s.notify));
          // final isFavorite = r.watch(
          //   liveControllerProvider.select(
          //     (s) => s.hoverChannel?.meta?.data.favorite,
          //   ),
          // );
          final isFavorite = false;
          return Icon(
            isFavorite ?? false ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ?? false ? Colors.red : Colors.white,
          );
        },
      ),
      const Icon(Icons.audiotrack_outlined),
      const Icon(Icons.subtitles),
      const Icon(Icons.table_rows_outlined),
      const Icon(Icons.fit_screen),
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
                    ListingUtils.clamp(
                      1,
                      icons.length,
                    ),
                    duration: Durations.medium1,
                    curve: Curves.easeInOut,
                  )
                  .then((_) => moving = false);
            case LogicalKeyboardKey.arrowLeft:
              if (horizontalController.selectedItem == 0) {
                return KeyEventResult.ignored;
              }
              if (!moving) {
                horizontalController
                    .animateToItem(
                      ListingUtils.clamp(
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
              if (!moving) {
                horizontalController
                    .animateToItem(
                      ListingUtils.clamp(
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
              if (event is KeyDownEvent) {
                if (horizontalController.selectedItem == 1) {
                  // toggleFavorite();
                  return KeyEventResult.handled;
                }
                widget.updateViewIndex(horizontalController.selectedItem);
                return KeyEventResult.handled;
              }

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
