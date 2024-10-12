import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:ibo_plus/domain/usecases/playlist/get_playlists.dart';
import 'package:ibo_plus/shared/types/no_parameters.dart';

import '../../domain/entities/playlist/playlist.dart';
import '../models/states/playlist_state.dart';

class PlaylistControllerNotifier extends Notifier<PlaylistState> {
  final _locator = GetIt.instance;
  late final _getPlaylists = _locator.get<GetPlaylists>();

  @override
  PlaylistState build() => const PlaylistState(isLoading: true);

  Future<void> init() async {
    try {
      final playlists = await _getPlaylists(NoParameters());
      final selectedPlaylist = playlists[0];

      state = state.copyWith(
        playlists: playlists,
        selectedPlaylist: selectedPlaylist,
        isLoading: false,
      );
      log('$state');
    } catch (e) {
      log('Error initializing Playlist: $e');
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  void selectPlaylist(Playlist playlist) {
    state = state.copyWith(selectedPlaylist: playlist);
  }
}

final playlistControllerProvider =
    NotifierProvider<PlaylistControllerNotifier, PlaylistState>(
  () => PlaylistControllerNotifier(),
);
