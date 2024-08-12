import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../data/models/live_channel.dart';

class ChannelTile extends StatelessWidget {
  const ChannelTile({
    super.key,
    required this.hovered,
    required this.focued,
    required this.selected,
    required this.fn,
    required this.formatter,
    required this.channelList,
    required this.index,
  });
  final int index;

  final bool hovered;
  final bool focued;
  final bool selected;
  final FocusNode fn;
  final intl.NumberFormat formatter;
  final List<LiveChannel> channelList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 20),
      decoration: hovered && focued || selected
          ? BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  fn.hasPrimaryFocus || selected
                      ? selected
                          ? Colors.orange.withOpacity(0.5)
                          : Colors.amber.withOpacity(0.15)
                      : Colors.amber.withOpacity(0.07),
                  Colors.transparent,
                ],
                stops: [0, selected ? 0.6 : 0.35],
              ),
              border: GradientBoxBorder(
                width: 3,
                gradient: LinearGradient(
                  colors: [
                    (fn.hasPrimaryFocus && hovered) || selected
                        ? !hovered
                            ? Colors.orange.withOpacity(0.3)
                            : Colors.amber
                        : Colors.amber.withOpacity(0.3),
                    Colors.transparent,
                  ],
                  stops: const [0, 0.5],
                ),
              ),
            )
          : null,
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
            imageUrl: channelList[index].streamIcon ?? '',
            errorWidget: (context, url, error) => const SizedBox.shrink(),
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              channelList[index].name,
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
