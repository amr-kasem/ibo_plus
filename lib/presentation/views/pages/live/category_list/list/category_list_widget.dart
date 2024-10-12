import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:ibo_plus/presentation/controllers/category_controller.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../../models/presentation_models/category.dart';
import 'category_tile.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({
    super.key,
    required this.verticalScrollController,
    required this.categoryList,
    required this.scrollKey,
  });

  final FixedExtentScrollController verticalScrollController;
  final List<CategoryPresentaionModel> categoryList;
  final PageStorageKey scrollKey;

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  late final categories =
      widget.categoryList.map((c) => StateProvider((_) => c)).toList();
  final _locator = GetIt.instance;
  late final _categoryController = _locator.get<CategoryController>();
  @override
  Widget build(BuildContext context) {
    final formatter = intl.NumberFormat(
        List.filled(widget.categoryList.length.toString().length, '0').join());
    return FadingEdgeScrollView.fromListWheelScrollView(
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
          _categoryController.hoverCategory(categories[value]);
        },
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            return CategoryTile(
              formatter: formatter,
              categoryProvider: categories[index],
              index: index,
            );
          },
          childCount: categories.length,
        ),
      ),
    );
  }
}
