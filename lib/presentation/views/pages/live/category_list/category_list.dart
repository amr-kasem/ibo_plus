import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../../controllers/app_controller.dart';
import '../../../../state_providers/live_states.dart';
import '../../../widgets/list_highlighter.dart';
import 'category_list_header.dart';
import 'list/category_list_remote_control.dart';

class CategoryList extends ConsumerWidget {
  CategoryList({
    required this.visible,
    required this.onSelect,
    required this.scrollKey,
    super.key,
  });
  final bool visible;
  final VoidCallback onSelect;
  final PageStorageKey scrollKey;
  final _locator = GetIt.instance;
  late final _logger = _locator.get<Logger>();
  late final _liveStates = _locator.get<LiveStates>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryListAsync = ref.watch(_liveStates.filteredCategories);
    return categoryListAsync.when(
      data: (categoryList) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryListHeader(),
          Expanded(
            child: Stack(
              children: [
                Consumer(
                  builder: (_, WidgetRef r, __) {
                    bool highlight = r.watch(AppState.hideBar);
                    return ListHighlighter(
                      highlighted: categoryList.isNotEmpty && highlight,
                    );
                  },
                ),
                CategoryListRemoteControl(
                  scrollKey: scrollKey,
                  categoryList: categoryList,
                  visible: visible,
                  onSelect: (category) {
                    // ref
                    //     .read(liveControllerProvider.notifier)
                    //     .selectCategory(category);
                    onSelect();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      error: (e, s) {
        _logger.e('Error Getting Categories', error: e, stackTrace: s);
        return Text('Error Getting Categories');
      },
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
