import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/player_state.dart';
import 'loading_indicator.dart';

class FvpPlayerWidget extends ConsumerWidget {
  const FvpPlayerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.watch(playerControllerProvider.select((s) => s.player));
    player?.updateTexture();
    return player == null
        ? const Center(
            child: Text('No Video'),
          )
        : ValueListenableBuilder<int?>(
            valueListenable: player.textureId,
            builder: (context, id, _) => id == null
                ? const LoadingIndicator(size: 96)
                : Texture(textureId: id),
          );
  }
}
