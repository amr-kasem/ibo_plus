import 'package:flutter/material.dart';

import '../category_list/category_list.dart';
import '../channel_list/channel_list.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.categories,
    required this.visible,
    required this.onSelectChannel,
    required this.onSelectCategory,
    required this.channelListScrollKey,
    required this.categoryListScrollKey,
  });

  final bool categories;
  final bool visible;
  final VoidCallback onSelectChannel;
  final VoidCallback onSelectCategory;
  final PageStorageKey channelListScrollKey;
  final PageStorageKey categoryListScrollKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        start: 8,
        top: 8,
        bottom: 8,
        end: 8,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black87,
            Colors.transparent,
          ],
          stops: [0.2, 1],
        ),
      ),
      child: AnimatedSwitcher(
        duration: Durations.medium1,
        child: categories
            ? CategoryList(
                visible: visible,
                onSelect: onSelectCategory,
                scrollKey: categoryListScrollKey,
              )
            : ChannelList(
                visible: visible,
                onSelect: onSelectChannel,
                scrollKey: channelListScrollKey,
              ),
      ),
    );
  }
}
