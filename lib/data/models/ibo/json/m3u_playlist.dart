import 'package:freezed_annotation/freezed_annotation.dart';

import 'converters/nullable_int_to_bool_converter.dart';

part 'm3u_playlist.freezed.dart';
part 'm3u_playlist.g.dart';

@freezed
class M3UPlaylistJsonModel with _$M3UPlaylistJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory M3UPlaylistJsonModel({
    @NullableIntToBoolConverter() required bool isProtected,
    required String id,
    required String url,
    required String playlistName,
    required String username,
    required String password,
    required String epgUrl,
    required String playlistType,
    required String originType,
    required String originUrl,
  }) = _M3UPlaylistJsonModel;

  factory M3UPlaylistJsonModel.fromJson(Map<String, dynamic> json) =>
      _$M3UPlaylistJsonModelFromJson(json);
}
