import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../../data/models/ibo/isar/live_channel.dart';
import '../../../../providers/app_state.dart';
import '../../../../providers/live_state.dart';

class ChannelTile extends StatelessWidget {
  const ChannelTile({
    super.key,
    required this.formatter,
    required this.channel,
    required this.index,
  });
  final int index;
  final LiveChannel channel;
  final intl.NumberFormat formatter;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, child) {
        bool selected = ref.watch(
                liveControllerProvider.select((s) => s.selectedChannelIndex)) ==
            index;
        bool highlight = ref.watch(AppState.hideBar);
        return Container(
          margin: const EdgeInsetsDirectional.only(start: 20),
          decoration: selected && highlight
              ? BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    stops: const [0, 0.6],
                  ),
                  border: const GradientBoxBorder(
                    width: 3,
                    gradient: LinearGradient(
                      colors: [
                        Colors.amber,
                        Colors.transparent,
                      ],
                      stops: [0, 0.5],
                    ),
                  ),
                )
              : null,
          child: child,
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 8),
          Text(
            formatter.format(index + 1),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          CachedNetworkImage(
            imageUrl: channel.streamIcon ?? '',
            errorWidget: (context, url, error) => const SizedBox.shrink(),
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              channel.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 25),
        ],
      ),
    );
  }
}
