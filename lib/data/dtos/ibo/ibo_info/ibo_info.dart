import 'package:freezed_annotation/freezed_annotation.dart';

import '../ibo_notification/ibo_notification.dart';
import '../language/language.dart';
import '../m3u_playlist/m3u_playlist.dart';
import '../user/user.dart';

part 'ibo_info.freezed.dart';
part 'ibo_info.g.dart';

@freezed
class IboInfoJsonModel with _$IboInfoJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory IboInfoJsonModel({
    @JsonKey(name: 'mac_address') required String deviceId,
    required String deviceKey,
    required String tmdbApiKey,
    required List<LanguageJsonModel> languages,
    required List<IboNotificationJsonModel> notifications,
    required UserJsonModel user,
    @JsonKey(name: 'urls') required List<M3uPlaylistJsonModel> playlists,
  }) = _IboInfoJsonModel;
  factory IboInfoJsonModel.fromJson(Map<String, dynamic> json) =>
      _$IboInfoJsonModelFromJson(json);
}
