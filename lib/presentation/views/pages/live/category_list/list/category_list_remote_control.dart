import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../domain/entities/category/category.dart';
import 'category_list_widget.dart';

class CategoryListRemoteControl extends StatefulWidget {
  const CategoryListRemoteControl({
    super.key,
    required this.scrollKey,
    required this.categoryList,
    required this.visible,
    required this.onSelect,
  });

  final List<Category> categoryList;
  final PageStorageKey scrollKey;
  final bool visible;
  final void Function(Category) onSelect;

  @override
  State<CategoryListRemoteControl> createState() =>
      _CategoryListRemoteControlState();
}

class _CategoryListRemoteControlState extends State<CategoryListRemoteControl> {
  final FixedExtentScrollController verticalScrollController =
      FixedExtentScrollController();

  final FocusNode fn = FocusNode();

  bool wantToSelect = false;
  bool moving = false;
  bool showSettings = false;

  Timer? visibilityTimer;

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      focusNode: fn,
      onKeyEvent: (node, event) {
        if (!widget.visible) {
          return KeyEventResult.ignored;
        }

        final itemIndex = verticalScrollController.selectedItem;

        if (event is! KeyUpEvent) {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowUp:
              if (itemIndex - 1 < 0) {
                return KeyEventResult.ignored;
              }
              moveCursor(itemIndex - 1, widget.categoryList);
              return KeyEventResult.handled;
            case LogicalKeyboardKey.arrowDown:
              moveCursor(itemIndex + 1, widget.categoryList);
              return KeyEventResult.handled;

            case LogicalKeyboardKey.arrowRight:
              widget.onSelect(widget.categoryList[itemIndex]);
              break;
            case LogicalKeyboardKey.arrowLeft:
              if (!fn.hasPrimaryFocus) {
                fn.requestFocus();
                return KeyEventResult.handled;
              }
            case LogicalKeyboardKey.goBack:
              if (!fn.hasPrimaryFocus) {
                fn.requestFocus();
                return KeyEventResult.handled;
              }

              break;
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              if (event is KeyRepeatEvent) {
                if (fn.hasPrimaryFocus) {
                  wantToSelect = false;
                  setState(() {
                    showSettings = true;
                  });
                }
              } else {
                wantToSelect = true;
              }

              break;
            default:
          }
        } else {
          switch (event.logicalKey) {
            case LogicalKeyboardKey.select:
            case LogicalKeyboardKey.space:
              if (fn.hasPrimaryFocus && wantToSelect) {
                widget.onSelect(widget.categoryList[itemIndex]);
                return KeyEventResult.handled;
              }

              break;
            default:
          }
        }
        return KeyEventResult.ignored;
      },
      child: CategoryListWidget(
        showSettings: showSettings,
        scrollKey: widget.scrollKey,
        verticalScrollController: verticalScrollController,
        categoryList: widget.categoryList,
      ),
    );
  }

  void moveCursor(int itemIndex, List<Category> categoryList) async {
    if (!moving) verticalScrollController.jumpToItem(itemIndex);
    moving = true;
    await Future.delayed(Durations.short3);
    moving = false;
  }
}
