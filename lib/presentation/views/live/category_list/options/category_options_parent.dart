import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'category_options.dart';
import 'category_settings.dart';
import 'search_categories.dart';

class CategoryOptionsParent extends StatefulWidget {
  const CategoryOptionsParent({
    super.key,
    required this.focused,
    required this.focusable,
  });
  final bool focused;
  final bool focusable;
  @override
  State<CategoryOptionsParent> createState() => _CategoryOptionsState();
}

class _CategoryOptionsState extends State<CategoryOptionsParent> {
  void updateState(int i) {
    setState(() {
      index = i;
    });
  }

  int index = 1;
  final fsn = FocusScopeNode();
  @override
  Widget build(BuildContext context) {
    late List<Widget> views = [
      const SearchCategories(),
      CategoryOptions(
        focused: widget.focused,
        updateViewIndex: updateState,
      ),
      CategorySettings(focused: widget.focused)
    ];
    return Focus(
      skipTraversal: true,
      descendantsAreFocusable: widget.focusable,
      child: FocusScope(
        node: fsn,
        skipTraversal: true,
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.goBack ||
                event.logicalKey == LogicalKeyboardKey.escape) {
              if (index == 1) return KeyEventResult.ignored;
              setState(() {
                index = 1;
              });

              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        onFocusChange: (f) {
          if (!f) {
            setState(() {
              index = 1;
            });
          }
        },
        child:
            AnimatedSwitcher(duration: Durations.short1, child: views[index]),
      ),
    );
  }
}
