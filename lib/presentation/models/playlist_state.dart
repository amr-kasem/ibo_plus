import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/playlist/playlist.dart';

part 'playlist_state.freezed.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState({
    Playlist? selectedPlaylist,
    @Default([]) List<Playlist> playlists,
    @Default(false) bool isLoading,
    String? error,
  }) = _PlaylistState;
  const PlaylistState._();
}
