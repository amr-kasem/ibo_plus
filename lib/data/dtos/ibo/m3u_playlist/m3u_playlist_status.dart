import 'package:freezed_annotation/freezed_annotation.dart';

part 'm3u_playlist_status.freezed.dart';
part 'm3u_playlist_status.g.dart';

@freezed
class M3uPlaylistStatusJsonModel with _$M3uPlaylistStatusJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory M3uPlaylistStatusJsonModel({
    required bool activeSubscription,
    required Duration expirayDuration,
  }) = _M3uPlaylistStatusJsonModel;

  factory M3uPlaylistStatusJsonModel.fromJson(Map<String, dynamic> json) =>
      _$M3uPlaylistStatusJsonModelFromJson(json);
}
