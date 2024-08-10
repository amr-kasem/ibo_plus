import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fvp/fvp.dart';
import 'package:fvp/mdk.dart';
import 'package:video_player/video_player.dart';

import '../../data/models/category.dart';
import '../../data/models/live_channel.dart';
import '../../services/live_services.dart';
import 'player_state.dart';
import 'playlist_providers.dart';

class LiveState {
  static bool fvp = true;
  static final currentChannel =
      FutureProvider((_) async => await LiveServices.getSelectedChannel());
  static final selectChannel = Provider((_) =>
      (LiveChannel channel) => LiveServices.changeCurrentChannel(channel));

  static final _allLiveChannels = FutureProvider<List<LiveChannel>>(
    (_) async => await LiveServices.getLiveChannels(),
  );

  static final hoverCategory = StateProvider<Category?>((ref) => null);

  static final liveChannels = FutureProvider<List<LiveChannel>>(
    (ref) async {
      final allChannels = await ref.watch(_allLiveChannels.future);
      final category = ref.watch(hoverCategory);
      if (category == null) {
        final c = await ref.watch(currentCategory.future);
        ref.read(hoverCategory.notifier).update((state) => c);
      }
      final search = ref.watch(LiveState.search);
      return allChannels.where((channel) {
        bool filter = false;
        if (category?.categoryId == null) {
          filter = true;
        } else if (category?.categoryId == -1) {
          filter = channel.isFavorite;
        } else {
          filter =
              category?.categoryId == int.tryParse(channel.categoryId ?? '');
        }
        return channel.name.contains(search) && filter;
      }).toList();
    },
  );

  static final currentChannelIndex = FutureProvider<int>((ref) async {
    final channels = await ref.watch(liveChannels.future);
    final c = await ref.watch(currentChannel.future);
    return c == null ? 0 : channels.indexOf(c);
  });

  static final liveCategories = FutureProvider<List<Category>>(
    (_) async => [
      Category(categoryId: null, categoryName: 'All Channels', parentId: 0),
      Category(categoryId: -1, categoryName: 'Favorites', parentId: 0),
      ...await LiveServices.getLiveCategories()
    ],
  );
  static final currentCategory =
      FutureProvider((_) async => await LiveServices.getSelectedCategory());
  static final currentCategoryIndex = FutureProvider<int>((ref) async {
    final channels = await ref.watch(liveCategories.future);
    final c = ref.watch(hoverCategory);
    return c == null ? 0 : channels.indexOf(c);
  });
  static final selectCategory = Provider((_) => (Category category) =>
      LiveServices.changeCurrentCategoryById(category.categoryId));
  static final resetCategoryHover = Provider((ref) {
    return () async {
      final cc = await ref.read(currentCategory.future);
      ref.read(hoverCategory.notifier).update((state) => cc);
    };
  });
  static final openCurrentChannel = Provider<VoidCallback>(
    (ref) {
      return () async {
        final fvpPlayerNotifier = ref.read(PlayerState.fpvPlayer.notifier);
        final videoPlayerController =
            ref.read(PlayerState.playerController.notifier);
        final c = await ref.read(currentChannel.future);
        final playlist =
            await ref.read(PlaylistProviders.selectedPlaylist.future);
        if (c == null) return Future.error('no channel selected');
        // ignore: dead_code
        if (fvp) {
          fvpPlayerNotifier.update(
            (old) {
              try {
                old?.dispose();
              } catch (_) {}
              registerWith();

              return Player()
                ..media =
                    "${playlist?.url}${playlist?.username}/${playlist?.password}/${c.streamId}"
                ..loop = -1
                ..state = PlaybackState.playing;
            },
          );
        } else {
          videoPlayerController.update(
            (old) {
              late final Uri uri;
              try {
                old?.dispose();
                uri = Uri.parse(
                    "${playlist?.url}${playlist?.username}/${playlist?.password}/${c.streamId}");
              } catch (_) {}
              // registerWith();
              final controller = VideoPlayerController.networkUrl(uri);
              return controller..initialize();
            },
          );
        }
      };
    },
  );
  static final stop = Provider<VoidCallback>(
    (ref) {
      final fvpPlayerNotifier = ref.read(PlayerState.fpvPlayer.notifier);
      final playerControllerNotifier =
          ref.read(PlayerState.playerController.notifier);
      return () {
        if (fvp) {
          fvpPlayerNotifier.update((player) {
            player?.state = PlaybackState.stopped;
            player?.dispose();
            return null;
          });
        } else {
          playerControllerNotifier.update((c) {
            c?.dispose();
            return null;
          });
        }
      };
    },
  );
  static final search = StateProvider((_) => '');
}
