import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/player_state.dart';
import 'loading_indicator.dart';

class PlayerWidget extends ConsumerWidget {
  const PlayerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.read(PlayerState.player);

    player.updateTexture();
    return ValueListenableBuilder<int?>(
      valueListenable: player.textureId,
      builder: (context, id, _) => id == null
          ? const LoadingIndicator(size: 96)
          : Texture(textureId: id),
    );
  }
}
