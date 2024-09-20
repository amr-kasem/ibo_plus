import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../data/models/category.dart';
import '../../../../providers/live_state.dart';
import 'category_tile.dart';

class CategoryListWidget extends ConsumerWidget {
  const CategoryListWidget({
    super.key,
    required this.verticalScrollController,
    required this.categoryList,
  });

  final FixedExtentScrollController verticalScrollController;
  final List<Category> categoryList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(liveControllerProvider.select((s) => s.categories), (a, b) {});
    return Row(
      children: [
        Expanded(
          child: FadingEdgeScrollView.fromListWheelScrollView(
            gradientFractionOnEnd: 0.5,
            gradientFractionOnStart: 0.5,
            child: ListWheelScrollView.useDelegate(
              controller: verticalScrollController,
              diameterRatio: 8,
              squeeze: 0.8,
              offAxisFraction: 1.5,
              itemExtent: 40,
              onSelectedItemChanged: (value) {
                // Implement selection change handling
                // ...
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  return CategoryTile(
                    category: categoryList[index],
                    index: index,
                  );
                },
                childCount: categoryList.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
