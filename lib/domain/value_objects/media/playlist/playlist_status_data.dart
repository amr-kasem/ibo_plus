import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_status_data.freezed.dart';

@freezed
class PlaylistStatusData with _$PlaylistStatusData {
  const factory PlaylistStatusData({
    required bool activeSubscription,
    required Duration expirayDuration,
  }) = _PlaylistStatusData;
  const PlaylistStatusData._();
}
