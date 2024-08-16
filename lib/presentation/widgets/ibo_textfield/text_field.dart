import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../../utils/app_utils.dart';
import '../faded_widget.dart';
import 'text_field_options.dart';

class IboTextField extends StatefulWidget {
  const IboTextField({
    super.key,
    this.onSubmit,
    this.onChange,
  });

  final void Function(String value)? onSubmit;
  final void Function(String value)? onChange;

  @override
  State<IboTextField> createState() => _IboTextFieldState();
}

class _IboTextFieldState extends State<IboTextField> {
  late final _controllerText = TextEditingController();
  late final verticalScrollController = FixedExtentScrollController();
  late final scrollController = ScrollController();
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
  void initState() {
    _controllerText.addListener(() {
      _scrollToEnd();
      widget.onChange?.call(_controllerText.text);
    });
    super.initState();
  }

  void _scrollToEnd() async {
    await Future.delayed(Duration.zero);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.purple,
      padding: const EdgeInsets.all(10),

      child: FadedWidget(
        child: Container(
          height: 120,
          color: Colors.black45,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Container(
                height: 34,
                decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      colors: [
                        Colors.amber,
                        Colors.amber.withOpacity(0.2),
                        Colors.transparent
                      ],
                      stops: const [0, 0.5, 0.75],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    width: 2,
                  ),
                  // borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [Colors.amber.withOpacity(0.2), Colors.transparent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                clipBehavior: Clip.none,
                child: AnimatedSize(
                  clipBehavior: Clip.none,
                  duration: Durations.medium1,
                  alignment: AlignmentDirectional.centerStart,
                  child: IntrinsicWidth(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Container(
                            padding: const EdgeInsetsDirectional.only(end: 35),
                            height: 30,
                            child: Focus(
                              canRequestFocus: false,
                              descendantsAreFocusable: false,
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minWidth: 100,
                                  maxWidth: 220,
                                ),
                                child: GlowingOverscrollIndicator(
                                  showLeading: false,
                                  showTrailing: false,
                                  axisDirection: AxisDirection.left,
                                  color: Colors.transparent,
                                  child: TextField(
                                    scrollController: scrollController,
                                    textAlignVertical: TextAlignVertical.center,
                                    scrollPhysics:
                                        const ClampingScrollPhysics(),
                                    decoration: const InputDecoration(
                                      hintText: 'Search',
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 0),
                                      filled: false,
                                      constraints: BoxConstraints(
                                        maxHeight: 20,
                                      ),
                                      isDense: true,
                                      prefixIconConstraints: BoxConstraints(
                                        maxHeight: 30,
                                        maxWidth: 35,
                                      ),
                                      prefixIcon: Icon(Icons.search),
                                      prefixIconColor: Colors.amber,
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
                        ),
                        Positioned.directional(
                          textDirection: Directionality.of(context),
                          end: 5,
                          top: -17,
                          child: Transform.scale(
                            scaleX: 0.33,
                            alignment: AlignmentDirectional.centerEnd,
                            child: Container(
                              height: 60,
                              width: 75,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.amber,
                                      Colors.transparent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  width: 2,
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Colors.amber.withOpacity(0.4),
                                    Colors.amber.withOpacity(0.4),
                                    Colors.transparent
                                  ],
                                  stops: const [0, 0.3, 0.7, 1],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned.directional(
                          textDirection: Directionality.of(context),
                          end: 5,
                          top: -17,
                          child: Container(
                            height: 60,
                            width: 26,
                            clipBehavior: Clip.none,
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Focus(
                              autofocus: true,
                              onKeyEvent: (node, event) {
                                final itemIndex =
                                    verticalScrollController.selectedItem;

                                if (event is! KeyUpEvent) {
                                  switch (event.logicalKey) {
                                    case LogicalKeyboardKey.arrowUp:
                                      moveCursor(itemIndex - 1, letters);

                                      return KeyEventResult.handled;
                                    case LogicalKeyboardKey.arrowDown:
                                      moveCursor(itemIndex + 1, letters);

                                      return KeyEventResult.handled;
                                    case LogicalKeyboardKey.select:
                                      _controllerText.text +=
                                          letters[itemIndex].toLowerCase();

                                      // setState(() {});
                                      return KeyEventResult.handled;
                                  }
                                }
                                return KeyEventResult.ignored;
                              },
                              child:
                                  FadingEdgeScrollView.fromListWheelScrollView(
                                gradientFractionOnEnd: 0.5,
                                gradientFractionOnStart: 0.5,
                                child: ListWheelScrollView.useDelegate(
                                  controller: verticalScrollController,
                                  itemExtent: 25,
                                  onSelectedItemChanged: (i) {},
                                  childDelegate:
                                      ListWheelChildLoopingListDelegate(
                                    children: letters
                                        .map(
                                          (l) => Text(
                                            l.toLowerCase(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: IboTextFieldOptions(
                  onDelete: () {
                    final t = _controllerText.text;
                    _controllerText.text = t.substring(0, t.length - 1);
                  },
                  onOk: () {
                    widget.onSubmit?.call(_controllerText.text);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void moveCursor(int newIndex, List<String> letters) {
    if (!moving) {
      verticalScrollController
          .animateToItem(
            AppUtils.cycle(
              newIndex,
              letters.length,
            ),
            duration: Durations.short1,
            curve: Curves.easeInOut,
          )
          .then((_) => moving = false);

      moving = true;
    }
  }
}
