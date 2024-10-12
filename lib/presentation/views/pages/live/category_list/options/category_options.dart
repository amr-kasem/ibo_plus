import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../shared/types/category_type.dart';
import '../../../../../controllers/category_controller.dart';
import '../../../../../state_providers/live_states.dart';
import '../../../../../utils/listing_utils.dart';

class CategoryOptions extends ConsumerStatefulWidget {
  const CategoryOptions({
    super.key,
    required this.focused,
    required this.updateViewIndex,
    required this.showFavoriteButton,
  });
  final void Function(int index) updateViewIndex;
  final bool focused;
  final bool showFavoriteButton;
  @override
  ConsumerState<CategoryOptions> createState() => _CategoryOptionsState();
}

class _CategoryOptionsState extends ConsumerState<CategoryOptions> {
  final _locator = GetIt.instance;
  late final _liveStates = _locator.get<LiveStates>();
  // late final _logger = _locator.get<Logger>();
  late final _categoryController = _locator.get<CategoryController>();
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
      if (widget.showFavoriteButton)
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
      const Text(
        'Show Only Favorites',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ];

    final List<Widget> icons = [
      const Icon(Icons.search),
      if (widget.showFavoriteButton)
        Consumer(
          builder: (_, WidgetRef r, __) {
            final provider = r.watch(_liveStates.hoveredCategoryProvider);

            return provider == null
                ? SizedBox.shrink()
                : Consumer(
                    builder: (_, WidgetRef r2, __) {
                      final x = r2.watch(
                        provider.select(
                          (s) => s.object.meta!.data.favorite,
                        ),
                      );
                      return Icon(
                        x ? Icons.favorite : Icons.favorite_border,
                        color: x ? Colors.red : Colors.white,
                      );
                    },
                  );
          },
        ),
      const Icon(Icons.settings),
      Consumer(
        builder: (_, WidgetRef r, __) {
          return Icon(
            ref.watch(_liveStates.showFavoriteOnly)
                ? Icons.local_activity_sharp
                : Icons.local_activity_outlined,
          );
        },
      )
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
              if (horizontalController.selectedItem == icons.length - 1) {
                return KeyEventResult.ignored;
              }
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
                  _categoryController.toggleFavorite();
                  return KeyEventResult.handled;
                }
                if (horizontalController.selectedItem == 3) {
                  _categoryController.toggleFavoriteOnly(
                    CategoryType.liveChannels,
                  );
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
