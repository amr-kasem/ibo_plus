import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../utils/app_utils.dart';

class SearchCategories extends StatefulWidget {
  const SearchCategories({super.key});

  @override
  State<SearchCategories> createState() => _SearchCategoriesState();
}

class _SearchCategoriesState extends State<SearchCategories> {
  late final _controllerText = TextEditingController();
  late final verticalScrollController = FixedExtentScrollController();
  bool moving = false;
  final letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IntrinsicWidth(
          child: AnimatedSize(
            duration: Durations.medium3,
            alignment: AlignmentDirectional.centerStart,
            child: Container(
              height: 30,
              color: Colors.blue,
              width: (_controllerText.text.length + 1) * 14,
              child: Focus(
                canRequestFocus: false,
                descendantsAreFocusable: false,
                child: TextField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(4),
                    filled: true,
                    fillColor: Colors.black38,
                  ),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  controller: _controllerText,
                  maxLines: 1,
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          height: 30,
          width: 20,
          child: Focus(
            autofocus: true,
            onKeyEvent: (node, event) {
              final itemIndex = verticalScrollController.selectedItem;

              if (event is! KeyUpEvent) {
                switch (event.logicalKey) {
                  case LogicalKeyboardKey.arrowUp:
                    moveCursor(itemIndex - 1, letters);
                    return KeyEventResult.handled;
                  case LogicalKeyboardKey.arrowDown:
                    moveCursor(itemIndex + 1, letters);
                    return KeyEventResult.handled;
                  case LogicalKeyboardKey.select:
                    _controllerText.text += letters[itemIndex];
                    setState(() {});
                    return KeyEventResult.handled;
                }
              }
              return KeyEventResult.ignored;
            },
            child: FadingEdgeScrollView.fromListWheelScrollView(
              gradientFractionOnEnd: 0.5,
              gradientFractionOnStart: 0.5,
              child: ListWheelScrollView.useDelegate(
                controller: verticalScrollController,
                diameterRatio: 8,
                squeeze: 0.8,
                offAxisFraction: 1.5,
                itemExtent: 40,
                onSelectedItemChanged: (i) {},
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    return Text(letters[index]);
                  },
                  childCount: letters.length,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void moveCursor(int newIndex, List<String> letters) {
    if (!moving) {
      verticalScrollController
          .animateToItem(
            AppUtils.clamp(
              newIndex,
              letters.length,
            ),
            duration: Durations.short2,
            curve: Curves.easeInOut,
          )
          .then((_) => moving = false);
      moving = true;
    }
  }
}
