import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../lib/presentation/views/providers/live_state.dart';

class ChannelListHeader extends ConsumerWidget {
  const ChannelListHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchValue =
        ref.watch(liveControllerProvider.select((s) => s.searchChannels));
    final currentCategory =
        ref.watch(liveControllerProvider.select((s) => s.selectedCategory));
    final title =
        '${currentCategory?.categoryName ?? 'All Channels'}      ${searchValue.isEmpty ? '' : 'Search: $searchValue'}';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
