import 'dart:async';

import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../data/models/category.dart';
import '../../../../utils/app_utils.dart';
import '../../../providers/live_state.dart';
import 'category_options_parent.dart';

class CategoryList extends ConsumerWidget {
  const CategoryList({
    super.key,
    required this.showSettings,
    required this.onSelect,
    required this.visible,
  });
  final bool visible;
  final bool showSettings;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channelList = ref.watch(LiveState.liveCategories);

    return channelList.when(
      data: (categories) => CategoriesListView(
        categories: categories,
        showSettings: showSettings,
        visible: visible,
        onSelect: onSelect,
      ),
      error: (e, s) => Center(
        child: Text('$e,$s'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class CategoriesListView extends ConsumerStatefulWidget {
  const CategoriesListView({
    required this.categories,
    required this.showSettings,
    required this.visible,
    required this.onSelect,
    super.key,
  });
  final List<Category> categories;
  final bool showSettings;
  final bool visible;
  final VoidCallback onSelect;

  @override
  ConsumerState<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends ConsumerState<CategoriesListView> {
  final verticalScrollController = FixedExtentScrollController();
  bool focued = false;
  final fn = FocusNode();
  bool epgVisible = false;
  Timer? epgTimer;
  bool moving = false;
  @override
  void initState() {
    epgTimer = Timer(Durations.short2, () {
      if (mounted) {
        setState(() {
          epgVisible = true;
        });
      }
    });
    ref.read(LiveState.currentCategoryIndex.future).then(
          (i) => verticalScrollController.jumpToItem(i),
        );
    super.initState();
  }

  late final changeCategory = ref.read(LiveState.selectCategory);

  @override
  Widget build(BuildContext context) {
    intl.NumberFormat formatter = intl.NumberFormat(
        List.filled(widget.categories.length.toString().length, '0').join());
    final hoverCategoryNotifier = ref.read(LiveState.hoverCategory.notifier);
    final categoryList = widget.categories
        .where((element) =>
            element.categoryName.contains(ref.watch(LiveState.search)))
        .toList();
    final currentCategoryIndex = ref
        .watch(LiveState.currentCategoryIndex)
        .when(data: (d) => d, error: (_, __) => null, loading: () => null);
    final resetHover = ref.read(LiveState.resetCategoryHover);

    return Focus(
      focusNode: fn,
      onFocusChange: (value) {
        setState(() {
          focued = value;
        });
        if (!value) {
          resetHover();
        } else {
          Future.delayed(Duration.zero).then(
            (_) {
              verticalScrollController.jumpToItem(currentCategoryIndex ?? 0);
            },
          );
        }
      },
      onKeyEvent: (node, event) {
        final itemIndex = verticalScrollController.selectedItem;

        if (event is! KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
              if (!moving) {
                verticalScrollController
                    .animateToItem(
                      AppUtils.clamp(
                        itemIndex - 1,
                        widget.categories.length,
                      ),
                      duration: Durations.short2,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
              break;
            case LogicalKeyboardKey.arrowDown:
              if (!moving) {
                verticalScrollController
                    .animateToItem(
                      AppUtils.clamp(
                        itemIndex + 1,
                        widget.categories.length,
                      ),
                      duration: Durations.short2,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
              }
              moving = true;
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
              }

              break;
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              widget.onSelect();
              changeCategory(
                categoryList[verticalScrollController.selectedItem],
              );

            default:
          }
        } else {
          if (LogicalKeyboardKey.arrowDown == event.logicalKey ||
              LogicalKeyboardKey.arrowUp == event.logicalKey) {
            hoverCategoryNotifier.update(
              (state) => categoryList[verticalScrollController.selectedItem],
            );
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
                onSelectedItemChanged: (_) {
                  setState(() {});
                },
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    final hovered =
                        verticalScrollController.selectedItem == index;

                    return Container(
                      margin: const EdgeInsetsDirectional.only(start: 20),
                      decoration: hovered && focued
                          ? BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  fn.hasPrimaryFocus
                                      ? Colors.orange.withOpacity(0.5)
                                      : Colors.amber.withOpacity(0.07),
                                  Colors.transparent,
                                ],
                                stops: const [0, 0.6],
                              ),
                              border: GradientBoxBorder(
                                width: 3,
                                gradient: LinearGradient(
                                  colors: [
                                    (fn.hasPrimaryFocus && hovered)
                                        ? Colors.amber
                                        : Colors.amber.withOpacity(0.3),
                                    Colors.transparent,
                                  ],
                                  stops: const [0, 0.5],
                                ),
                              ),
                            )
                          : null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 8),
                          Text(
                            formatter.format(index + 1),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              categoryList[index].categoryName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                        ],
                      ),
                    );
                  },
                  childCount: categoryList.length,
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
                      currentcategory: currentCategoryIndex ==
                          verticalScrollController.selectedItem,
                    )
                  : const SizedBox.shrink(),
            ),
        ],
      ),
    );
  }
}
