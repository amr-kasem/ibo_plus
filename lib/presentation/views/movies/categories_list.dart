import 'package:flutter/material.dart';

import '../../widgets/two_level_list_controller.dart';
import '../home/home_tabview.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TwoLevelListController(
      mainListBuilder: (
        secondryListBuilder,
        scrollController,
        notifyMainList,
        focused,
      ) {
        return ListWheelScrollView.useDelegate(
          clipBehavior: Clip.antiAlias,
          controller: scrollController,
          itemExtent: 204,
          diameterRatio: 4,
          squeeze: 0.6,
          onSelectedItemChanged: notifyMainList,
          childDelegate: ListWheelChildBuilderDelegate(
            builder: secondryListBuilder,
            childCount: 6,
          ),
        );
      },
      secondryListBuilder: (
        int i,
        scrollController,
        focused,
      ) {
        return HorizontalList(
          focused: focused,
          horizontalController: scrollController,
          category: i,
        );
      },
    );
  }
}
