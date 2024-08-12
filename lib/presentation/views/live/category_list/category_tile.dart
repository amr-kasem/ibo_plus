import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../data/models/category.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.hovered,
    required this.focued,
    required this.fn,
    required this.formatter,
    required this.categories,
    required this.index,
  });
  final int index;
  final bool hovered;
  final bool focued;
  final FocusNode fn;
  final intl.NumberFormat formatter;
  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
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
              categories[index].categoryName,
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
