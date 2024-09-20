import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../../data/models/category.dart';
import '../../../../providers/live_state.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.formatter,
    required this.category,
    required this.index,
  });
  final int index;
  final intl.NumberFormat formatter;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, child) {
        bool selected = ref.watch(liveControllerProvider
            .select((s) => s.selectedCategory == category));
        return Container(
          margin: const EdgeInsetsDirectional.only(start: 20),
          decoration: selected
              ? BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    stops: [0, selected ? 0.6 : 0.35],
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
          child: child,
        );
      },
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
              category.categoryName,
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
  }
}
