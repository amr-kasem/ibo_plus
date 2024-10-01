import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/playlist/playlist.dart';

part 'playlist_state.freezed.dart';

@freezed
class M3UPlaylistState with _$M3UPlaylistState {
  const factory M3UPlaylistState({
    Playlist? selectedPlaylist,
    @Default([]) List<Playlist> playlists,
    @Default(false) bool isLoading,
    String? error,
  }) = _M3UPlaylistState;
  const M3UPlaylistState._();
}

class M3UPlaylistControllerNotifier extends Notifier<M3UPlaylistState> {
  @override
  M3UPlaylistState build() => const M3UPlaylistState(isLoading: true);

  Future<void> init() async {
    try {
      final playlists = await UserRepository.getPlaylists();
      final selectedPlaylist = await UserRepository.selectedPlaylist;

      state = state.copyWith(
        playlists: playlists,
        selectedPlaylist: selectedPlaylist ?? playlists.firstOrNull,
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
}

final m3UPlaylistControllerProvider =
    NotifierProvider<M3UPlaylistControllerNotifier, M3UPlaylistState>(
  () => M3UPlaylistControllerNotifier(),
);
