import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fvp/mdk.dart';

import '../../providers/live_state.dart';
import '../../providers/player_state.dart';
import '../../widgets/loading_indicator.dart';

class LivePlayerConsumer extends ConsumerWidget {
  const LivePlayerConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(LiveState.liveUrl);
    return Center(
      child: url.when(
          data: (videoUrl) => videoUrl == null
              ? const Center(
                  child: Text('No channel Selected'),
                )
              : LivePlayer(link: videoUrl),
          error: (e, _) => const Center(),
          loading: () => const Center()),
    );
  }
}

class LivePlayer extends ConsumerStatefulWidget {
  const LivePlayer({
    super.key,
    required this.link,
  });
  final String link;

  @override
  ConsumerState<LivePlayer> createState() => _LivePlayerState();
}

class _LivePlayerState extends ConsumerState<LivePlayer> {
  late final Player player;
  @override
  void initState() {
    // only these platforms will use this plugin implementation
    player = ref.read(PlayerState.player);
    super.initState();
    initController();
  }

  Future<void> initController() async {
    try {
      player.media = widget.link;
      player.loop = -1;
      player.state = PlaybackState.playing;
      player.updateTexture();
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  void dispose() {
    player.state = PlaybackState.stopped;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int?>(
      valueListenable: player.textureId,
      builder: (context, id, _) => id == null
          ? const LoadingIndicator(size: 96)
          : Texture(textureId: id),
    );
  }
}
