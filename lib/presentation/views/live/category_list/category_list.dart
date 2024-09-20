import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/category.dart';
import '../../../providers/live_state.dart';
import '../../../widgets/list_highlighter.dart';
import 'category_list_header.dart';
import 'list/category_list_remote_control.dart';

class CategoryList extends ConsumerWidget {
  const CategoryList({
    required this.visible,
    required this.onSelect,
    super.key,
  });
  final bool visible;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Category> categoryList =
        ref.watch(liveControllerProvider.select((s) => s.categories));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategoryListHeader(),
        Expanded(
          child: Stack(
            children: [
              ListHighlighter(highlighted: categoryList.isNotEmpty),
              CategoryListRemoteControl(
                categoryList: categoryList,
                visible: visible,
                onSelect: (category) {
                  ref
                      .read(liveControllerProvider.notifier)
                      .selectCategory(category);
                  onSelect();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
