import 'package:collection/collection.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ibo_plus/presentation/views/live/category_list/options/category_options_parent.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../../data/models/ibo/category/category.dart';
import '../../../../providers/live_state.dart';
import 'category_tile.dart';

class CategoryListWidget extends ConsumerStatefulWidget {
  const CategoryListWidget({
    super.key,
    required this.verticalScrollController,
    required this.categoryList,
    required this.scrollKey,
    required this.showSettings,
  });

  final FixedExtentScrollController verticalScrollController;
  final List<Category> categoryList;
  final PageStorageKey scrollKey;
  final bool showSettings;
  @override
  ConsumerState<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends ConsumerState<CategoryListWidget> {
  late intl.NumberFormat formatter;
  bool initialized = false;
  @override
  void initState() {
    super.initState();
    formatter = intl.NumberFormat(
        List.filled(widget.categoryList.length.toString().length, '0').join());
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(liveControllerProvider.select((s) => s.categories), (a, b) {
      final same = const ListEquality().equals(a, b);
      if (!same || !initialized) {
        initialized = true;
        int i = 0;
        final currentCategory = ref
            .read(liveControllerProvider.notifier)
            .stateSnapshot
            .selectedCategory;
        if (currentCategory != null) {
          i = b.indexOf(currentCategory);
          if (i == -1) {
            i = 0;
          }
        }
        widget.verticalScrollController.jumpToItem(i);
      }
    });

    return Row(
      children: [
        Expanded(
          child: FadingEdgeScrollView.fromListWheelScrollView(
            gradientFractionOnEnd: 0.5,
            gradientFractionOnStart: 0.5,
            child: ListWheelScrollView.useDelegate(
              controller: widget.verticalScrollController,
              key: widget.scrollKey,
              diameterRatio: 8,
              squeeze: 0.8,
              offAxisFraction: 1.5,
              itemExtent: 40,
              onSelectedItemChanged: (value) {
                ref
                    .read(liveControllerProvider.notifier)
                    .selectCategory(widget.categoryList[value]);
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  return CategoryTile(
                    formatter: formatter,
                    category: widget.categoryList[index],
                    index: index,
                  );
                },
                childCount: widget.categoryList.length,
              ),
            ),
          ),
        ),
        Expanded(
          child: widget.showSettings
              ? const CategoryOptionsParent()
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
