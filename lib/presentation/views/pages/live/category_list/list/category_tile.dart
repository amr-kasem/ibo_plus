import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart' as intl;
import 'package:shimmer/shimmer.dart';

import '../../../../../controllers/category_controller.dart';
import '../../../../../models/presentation_models/category.dart';

class CategoryTile extends ConsumerWidget {
  CategoryTile({
    super.key,
    required this.formatter,
    required this.categoryProvider,
    required this.index,
  });
  final int index;
  final intl.NumberFormat formatter;
  final StateProvider<CategoryPresentaionModel> categoryProvider;
  final _locator = GetIt.instance;
  late final _categoryController = _locator.get<CategoryController>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c = ref.watch(categoryProvider);
    _categoryController.loadCategoryData(categoryProvider);

    return Container(
      margin: const EdgeInsetsDirectional.only(start: 20),
      decoration: c.selected && c.hovered
          ? BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.orange.withOpacity(0.5),
                  Colors.transparent,
                ],
                stops: const [0, 0.6],
              ),
              border: const GradientBoxBorder(
                width: 3,
                gradient: LinearGradient(
                  colors: [
                    Colors.amber,
                    Colors.transparent,
                  ],
                  stops: [0, 0.5],
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
            child: Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: const Color.fromARGB(255, 209, 209, 209),
              enabled: c.object.data == null,
              child: Text(
                c.object.data?.categoryName ?? 'Loading category data',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
        ],
      ),
    );
  }
}
