import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fvp/mdk.dart';

import '../../data/models/category.dart';
import '../../data/models/live_channel.dart';
import '../../services/live_services.dart';
import 'player_state.dart';
import 'playlist_providers.dart';

class LiveState {
  static final currentChannel =
      FutureProvider((_) async => await LiveServices.getSelectedChannel());
  static final liveChannels = FutureProvider<List<LiveChannel>>(
    (_) async => await LiveServices.getLiveChannels(),
  );
  static final liveCategories = FutureProvider<List<Category>>(
    (_) async => await LiveServices.getLiveCategories(),
  );
  static final openCurrentChannel = FutureProvider<VoidCallback>(
    (ref) async {
      final player = ref.read(PlayerState.player);
      final c = await ref.read(currentChannel.future);
      final playlist =
          await ref.read(PlaylistProviders.selectedPlaylist.future);
      if (c == null) return Future.error('no channel selected');
      player.media =
          "${playlist?.url}${playlist?.username}/${playlist?.password}/${c.streamId}";
      player.loop = -1;
      return () {
        player.state = PlaybackState.playing;
      };
    },
  );
  static final stop = FutureProvider<VoidCallback>(
    (ref) async {
      final player = ref.read(PlayerState.player);

      return () {
        player.state = PlaybackState.stopped;
      };
    },
  );
  static final search = StateProvider((_) => '');
  static final visibleInfo = Provider((ref) => FocusNode());
}
