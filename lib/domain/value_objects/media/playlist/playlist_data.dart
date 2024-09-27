import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_data.freezed.dart';

@freezed
class PlaylistData with _$PlaylistData {
  const factory PlaylistData({
    required bool isProtected,
    required String id,
    required String url,
    required String playlistName,
    required String username,
    required String password,
    required String epgUrl,
    required String playlistType,
    required String originType,
    required String originUrl,
  }) = _PlaylistData;
}
