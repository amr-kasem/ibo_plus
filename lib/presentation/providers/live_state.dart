import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/category.dart';
import '../../data/models/live_channel.dart';
import '../../services/live_services.dart';
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
  static final liveUrl = FutureProvider<String?>(
    (ref) async {
      final c = await ref.watch(currentChannel.future);
      final playlist =
          await ref.read(PlaylistProviders.selectedPlaylist.future);
      if (c == null) return null;
      log("${playlist?.url}${playlist?.username}/${playlist?.password}/${c.streamId}");
      return "${playlist?.url}${playlist?.username}/${playlist?.password}/${c.streamId}";
    },
  );
  static final search = StateProvider((_) => '');
}
