import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../serializers/nullable_int_to_bool.dart';

part 'm3u_playlist.freezed.dart';
part 'm3u_playlist.g.dart';

@freezed
class M3uPlaylistJsonModel with _$M3uPlaylistJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory M3uPlaylistJsonModel({
    @NullableIntToBoolSerializer() required bool isProtected,
    required String id,
    required String url,
    required String playlistName,
    required String username,
    required String password,
    required String epgUrl,
    required String playlistType,
    required String originType,
    required String originUrl,
  }) = _MuUPlaylistJsonModel;

  factory M3uPlaylistJsonModel.fromJson(Map<String, dynamic> json) =>
      _$M3uPlaylistJsonModelFromJson(json);
}
