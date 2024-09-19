import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class ListHighlighter extends StatelessWidget {
  const ListHighlighter({
    super.key,
    required this.highlighted,
  });

  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          margin: const EdgeInsets.only(left: 20),
          height: 40,
          decoration: highlighted
              ? BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.amber.withOpacity(0.07),
                      Colors.transparent,
                    ],
                    stops: const [0, 0.35],
                  ),
                  border: GradientBoxBorder(
                    width: 3,
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.withOpacity(0.3),
                        Colors.transparent,
                      ],
                      stops: const [0, 0.5],
                    ),
                  ),
                )
              : null),
    );
  }
}
