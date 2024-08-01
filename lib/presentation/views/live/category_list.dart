import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/category.dart';
import '../../../utils/app_utils.dart';
import '../../providers/live_state.dart';

class CategoriesList extends ConsumerStatefulWidget {
  const CategoriesList({
    super.key,
  });

  @override
  ConsumerState<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends ConsumerState<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    final categoriesData = ref.watch(LiveState.liveCategories);
    return categoriesData.when(
      data: (categories) => CategoryListView(
        categories: categories,
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

class CategoryListView extends StatefulWidget {
  const CategoryListView({
    super.key,
    required this.categories,
  });
  final List<Category> categories;

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  bool focused = false;
  bool moving = false;
  final verticalController = FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    return Focus(
      onKeyEvent: (node, event) {
        if (event is! KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
              if (!moving) {
                verticalController
                    .animateToItem(
                      AppUtils.clamp(
                        verticalController.selectedItem - 1,
                        widget.categories.length,
                      ),
                      duration: Durations.medium1,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
                moving = true;
              }
              return KeyEventResult.handled;
            case LogicalKeyboardKey.arrowDown:
              if (!moving) {
                verticalController
                    .animateToItem(
                      AppUtils.clamp(
                        verticalController.selectedItem + 1,
                        widget.categories.length,
                      ),
                      duration: Durations.medium1,
                      curve: Curves.easeInOut,
                    )
                    .then((_) => moving = false);
                moving = true;
              }
              return KeyEventResult.handled;

            default:
          }
        }
        return KeyEventResult.ignored;
      },
      onFocusChange: (value) {
        setState(() {
          focused = value;
        });
      },
      child: FadingEdgeScrollView.fromListWheelScrollView(
        gradientFractionOnEnd: 0.5,
        gradientFractionOnStart: 0.5,
        child: ListWheelScrollView.useDelegate(
          controller: verticalController,
          diameterRatio: 8,
          squeeze: 0.8,
          offAxisFraction: 0.5,
          itemExtent: 40,
          onSelectedItemChanged: (_) => setState(() {}),
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              bool selected = index == verticalController.selectedItem;
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        selected && focused ? Colors.amber : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Text(
                      widget.categories[index].categoryName,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              );
            },
            childCount: widget.categories.length,
          ),
        ),
      ),
    );
  }
}
