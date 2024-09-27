import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fvp/mdk.dart';

import '../loading_indicator.dart';

class FvpPlayerWidget extends ConsumerWidget {
  final Player? player;
  const FvpPlayerWidget({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    player?.updateTexture();
    return player == null
        ? const Center(
            child: Text('No Video'),
          )
        : ValueListenableBuilder<int?>(
            valueListenable: player!.textureId,
            builder: (context, id, _) => id == null
                ? const LoadingIndicator(size: 96)
                : Texture(textureId: id),
          );
  }
}
