import 'dart:async';

import 'package:collection/collection.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' as intl;

import '../../../providers/live_state.dart';
import 'category_list_header.dart';
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
  late final liveNotifier = ref.read(liveControllerProvider.notifier);
  late final FixedExtentScrollController verticalScrollController =
      FixedExtentScrollController();
  bool focued = false;
  final fn = FocusNode();
  bool epgVisible = false;
  Timer? epgTimer;
  bool moving = false;
  bool wantToSelect = false;
  bool initialized = false;
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

  @override
  Widget build(BuildContext context) {
    final currentCategory =
        ref.watch(liveControllerProvider.select((s) => s.selectedCategory));
    ref.listen(liveControllerProvider.select((s) => s.categories), (a, b) {
      final same = const ListEquality().equals(a, b);
      if (!same) {
        int i = 0;
        final c =
            ref.read(liveControllerProvider.select((s) => s.selectedCategory));
        if (c != null) {
          i = b.indexOf(c);
          if (i == -1) {
            i = 0;
          }
        }
        verticalScrollController.jumpToItem(i);
      }
    });
    final categories =
        ref.watch(liveControllerProvider.select((s) => s.categories));
    if (!initialized) {
      initialized = true;
      int i = 0;
      if (currentCategory != null) {
        i = categories.indexOf(currentCategory);
        if (i == -1) {
          i = 0;
        }
      }
      WidgetsBinding.instance.addPostFrameCallback((_) {
        verticalScrollController.jumpToItem(i);
      });
    }
    intl.NumberFormat formatter = intl.NumberFormat(
        List.filled(categories.length.toString().length, '0').join());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategoryListHeader(),
        Expanded(
          child: Focus(
            focusNode: fn,
            skipTraversal: !widget.visible,
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
                    if (itemIndex - 1 < 0) {
                      return KeyEventResult.ignored;
                    }
                    // fn.requestFocus();
                    moveCursor(itemIndex - 1, categories);

                    return KeyEventResult.handled;
                  case LogicalKeyboardKey.arrowDown:
                    moveCursor(itemIndex + 1, categories);
                    break;

                  case LogicalKeyboardKey.arrowRight:
                    widget.onSelect();
                    if (fn.hasPrimaryFocus) {
                      final f = node.traversalDescendants.firstOrNull;
                      if (f != null) {
                        f.requestFocus();
                      }
                      return KeyEventResult.handled;
                    } else {}

                  case LogicalKeyboardKey.goBack:
                    if (!fn.hasPrimaryFocus) {
                      fn.requestFocus();
                      return KeyEventResult.handled;
                    } else {
                      if (liveNotifier
                          .stateSnapshot.searchCategories.isNotEmpty) {
                        liveNotifier.searchCategories('');
                      }
                      if (categories[verticalScrollController.selectedItem] !=
                          currentCategory) {
                        final i = liveNotifier.resetCategry();
                        moveCursor(i, categories);

                        return KeyEventResult.handled;
                      }
                    }

                    break;
                  case LogicalKeyboardKey.arrowLeft:
                    if (!fn.hasPrimaryFocus) {
                      fn.requestFocus();
                      return KeyEventResult.handled;
                    }
                  case LogicalKeyboardKey.select:
                  case LogicalKeyboardKey.space:
                    if (event is KeyRepeatEvent) {
                      if (fn.hasPrimaryFocus) {
                        wantToSelect = false;
                        final f = node.traversalDescendants.firstOrNull;
                        if (f != null) {
                          f.requestFocus();
                        } else {
                          wantToSelect = true;
                        }
                      }
                    }
                  default:
                }
              } else {
                switch (event.logicalKey) {
                  case LogicalKeyboardKey.select:
                  case LogicalKeyboardKey.space:
                    if (fn.hasPrimaryFocus) {
                      if (wantToSelect) {
                        liveNotifier.selectCategory(liveNotifier.stateSnapshot
                            .categories[verticalScrollController.selectedItem]);
                        widget.onSelect();
                      }
                    }
                    break;
                  default:
                }
              }
              return KeyEventResult.ignored;
            },
            child: Row(
              children: [
                Expanded(
                  flex: 1,
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
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          liveNotifier.selectCategory(
                              liveNotifier.stateSnapshot.categories[i]);
                        });
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
                            showFavoriteButton: categories.length >
                                    verticalScrollController.selectedItem
                                ? categories[verticalScrollController
                                                .selectedItem]
                                            .categoryId !=
                                        -2 &&
                                    categories[verticalScrollController
                                                .selectedItem]
                                            .categoryId !=
                                        -1
                                : true,
                          )
                        : const SizedBox.shrink(),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // void moveCursor(int newIndex, List<Category> categories) {
  //   if (!moving) {
  //     verticalScrollController
  //         .animateToItem(
  //           AppUtils.clamp(
  //             newIndex,
  //             categories.length,
  //           ),
  //           duration: Durations.short2,
  //           curve: Curves.easeInOut,
  //         )
  //         .then((_) => moving = false);
  //     moving = true;
  //   }
  // }
  void moveCursor(int itemIndex, channelList) {
    if (!moving) {
      // verticalScrollController
      //     .animateToItem(
      //       AppUtils.clamp(
      //         itemIndex,
      //         channelList.length,
      //       ),
      //       duration: Durations.short2,
      //       curve: Curves.easeInOut,
      //     )
      //     .then((_) => moving = false);

      Future.delayed(Durations.short3).then((_) {
        verticalScrollController.jumpToItem(itemIndex);
        moving = false;
      });
    }
    moving = true;
  }
}
