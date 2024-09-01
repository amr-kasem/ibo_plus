import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';

import 'movie_tile.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({
    super.key,
    required this.horizontalController,
    required this.category,
    required this.focused,
  });

  final FixedExtentScrollController horizontalController;
  final int category;
  final bool focused;

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Category #${widget.category}',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Expanded(
          child: RotatedBox(
            quarterTurns: -1,
            child: FadingEdgeScrollView.fromListWheelScrollView(
              gradientFractionOnStart: 0.5,
              gradientFractionOnEnd: 0.5,
              child: ListWheelScrollView.useDelegate(
                key: PageStorageKey<int>(widget.category),
                controller: widget.horizontalController,
                diameterRatio: 8,
                useMagnifier: true,
                offAxisFraction: 1.5,
                onSelectedItemChanged: (value) => setState(() {}),
                itemExtent: 120,
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, j) {
                    final selected =
                        j == widget.horizontalController.selectedItem &&
                            widget.focused;

                    return RotatedBox(
                      quarterTurns: 1,
                      child: AnimatedScale(
                        duration: Durations.medium1,
                        alignment: Alignment.center,
                        scale: selected ? 1.1 : 1,
                        child: AnimatedContainer(
                          duration: Durations.medium2,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  selected ? Colors.amber : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          padding: const EdgeInsets.all(2),
                          margin: const EdgeInsets.all(8),
                          width: 120,
                          height: 170,
                          child: const MovieTile(),
                        ),
                      ),
                    );
                  },
                  childCount: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
