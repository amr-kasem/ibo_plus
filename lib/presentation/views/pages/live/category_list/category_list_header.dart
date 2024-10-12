import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../../../state_providers/live_states.dart';

class CategoryListHeader extends ConsumerWidget {
  CategoryListHeader({
    super.key,
  });

  final _locator = GetIt.instance;
  late final _liveStates = _locator.get<LiveStates>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final searchValue = ref.watch(_liveStates.searchCategories);
    final title =
        'Categories      ${searchValue.isEmpty ? '' : 'Search: $searchValue'}';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
