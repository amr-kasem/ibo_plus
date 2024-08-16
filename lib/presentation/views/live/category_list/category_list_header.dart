import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/live_state.dart';

class CategoryListHeader extends ConsumerWidget {
  const CategoryListHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchValue =
        ref.watch(liveControllerProvider.select((s) => s.searchCategories));

    final title = searchValue.isEmpty ? '' : 'Search: $searchValue';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
