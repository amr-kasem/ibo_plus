import 'dart:async';

import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../data/models/category.dart';
import '../../../../utils/app_utils.dart';
import '../../../providers/live_state.dart';
import 'category_tile.dart';
import 'options/category_options_parent.dart';

class CategoryList extends ConsumerStatefulWidget {
  const CategoryList({
    required this.showSettings,
    required this.visible,
    required this.onSelect,
    super.key,
  });
  final bool showSettings;
  final bool visible;
  final VoidCallback onSelect;

  @override
  ConsumerState<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends ConsumerState<CategoryList> {
  late final verticalScrollController = FixedExtentScrollController();
  bool focued = false;
  final fn = FocusNode();
  bool epgVisible = false;
  Timer? epgTimer;
  bool moving = false;
  bool contaminated = false;
  @override
  void initState() {
    epgTimer = Timer(Durations.short2, () {
      if (mounted) {
        setState(() {
          epgVisible = true;
        });
      }
    });

    super.initState();
  }

  late final liveNotifier = ref.read(liveControllerProvider.notifier);

  @override
  Widget build(BuildContext context) {
    final categories =
        ref.watch(liveControllerProvider.select((s) => s.categories));
    final currentCategory =
        ref.watch(liveControllerProvider.select((s) => s.selectedCategory));
    intl.NumberFormat formatter = intl.NumberFormat(
        List.filled(categories.length.toString().length, '0').join());

    return Focus(
      focusNode: fn,
      onFocusChange: (value) {
        setState(() {
          focued = value;
        });
      },
      onKeyEvent: (node, event) {
        final itemIndex = verticalScrollController.selectedItem;

        if (event is! KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
              moveCursor(itemIndex - 1, categories);
              break;
            case LogicalKeyboardKey.arrowDown:
              moveCursor(itemIndex + 1, categories);
              break;

            case LogicalKeyboardKey.arrowRight:
              final f = node.traversalDescendants.firstOrNull;
              if (f != null) {
                f.requestFocus();
              }
              return KeyEventResult.handled;

            case LogicalKeyboardKey.goBack:
              if (!fn.hasPrimaryFocus) {
                fn.requestFocus();
                return KeyEventResult.handled;
              } else {
                if (categories[verticalScrollController.selectedItem] !=
                    currentCategory) {
                  moveCursor(liveNotifier.resetCategry(), categories);
                  contaminated = true;
                  return KeyEventResult.handled;
                }
              }

              break;
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              widget.onSelect();
              liveNotifier.commitSelectedCategory();

            default:
          }
        }
        return KeyEventResult.ignored;
      },
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: FadingEdgeScrollView.fromListWheelScrollView(
              gradientFractionOnEnd: 0.5,
              gradientFractionOnStart: 0.5,
              child: ListWheelScrollView.useDelegate(
                controller: verticalScrollController,
                diameterRatio: 8,
                squeeze: 0.8,
                offAxisFraction: 1.5,
                itemExtent: 40,
                onSelectedItemChanged: (i) {
                  liveNotifier.selectCategory(categories[i]);
                },
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    final hovered =
                        verticalScrollController.selectedItem == index;

                    return CategoryTile(
                      index: index,
                      hovered: hovered,
                      focued: focued,
                      fn: fn,
                      formatter: formatter,
                      categories: categories,
                    );
                  },
                  childCount: categories.length,
                ),
              ),
            ),
          ),
          if (widget.showSettings)
            Expanded(
              flex: 1,
              child: epgVisible
                  ? CategoryOptionsParent(
                      focused: !fn.hasPrimaryFocus,
                      focusable: fn.hasFocus,
                    )
                  : const SizedBox.shrink(),
            ),
        ],
      ),
    );
  }

  void moveCursor(int newIndex, List<Category> categories) {
    if (!moving) {
      verticalScrollController
          .animateToItem(
            AppUtils.clamp(
              newIndex,
              categories.length,
            ),
            duration: Durations.short2,
            curve: Curves.easeInOut,
          )
          .then((_) => moving = false);
      moving = true;
    }
  }
}
