import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';

class HorizontalList<T> extends StatefulWidget {
  const HorizontalList({
    super.key,
    required this.horizontalController,
    required this.header,
    required this.id,
    required this.items,
    required this.focused,
    required this.itemBuilder,
  });

  final FixedExtentScrollController horizontalController;
  final Widget header;
  final int id;
  final List<T> items;
  final bool focused;
  final Widget? Function(
    BuildContext context,
    T item,
    bool selected,
  ) itemBuilder;

  @override
  State<HorizontalList<T>> createState() => _HorizontalListState<T>();
}

class _HorizontalListState<T> extends State<HorizontalList<T>> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.header,
        Expanded(
          child: RotatedBox(
            quarterTurns: -1,
            child: FadingEdgeScrollView.fromListWheelScrollView(
              gradientFractionOnStart: 0.35,
              gradientFractionOnEnd: 0.35,
              child: ListWheelScrollView.useDelegate(
                key: PageStorageKey<int>(widget.id),
                controller: widget.horizontalController,
                diameterRatio: 12,
                useMagnifier: true,
                offAxisFraction: 1.8,
                onSelectedItemChanged: (value) => setState(() {}),
                itemExtent: 120,
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (c, i) => widget.itemBuilder(
                    c,
                    widget.items[i],
                    i == widget.horizontalController.selectedItem &&
                        widget.focused,
                  ),
                  childCount: widget.items.length,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
