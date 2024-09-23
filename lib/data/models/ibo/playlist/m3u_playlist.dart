import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../utils/app_utils.dart';

part 'm3u_playlist.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@collection
class M3UPlaylist {
  @JsonKey(fromJson: AppUtils.intToBool, toJson: AppUtils.boolToInt)
  final bool isProtected;
  final String id;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Id get isarId => AppUtils.fastHash(id);
  final String url;
  final String playlistName;
  final String username;
  final String password;
  final String epgUrl;
  final String playlistType;
  final String originType;
  final String originUrl;

  @ignore
  @JsonKey(includeToJson: false, includeFromJson: false)
  late Duration expiray;
  @JsonKey(includeToJson: false, includeFromJson: false)
  late bool connected;
  @JsonKey(includeToJson: false, includeFromJson: false)
  late bool active;
  @JsonKey(includeToJson: false, includeFromJson: false)
  int get isarExpiary => expiray.inSeconds;
  set isarExpiary(int i) => expiray = Duration(seconds: i);

  M3UPlaylist({
    required this.isProtected,
    required this.id,
    required this.url,
    required this.playlistName,
    required this.username,
    required this.password,
    required this.epgUrl,
    required this.playlistType,
    required this.originType,
    required this.originUrl,
  }) {
    connected = false;
    active = false;
    expiray = Duration.zero;
  }
  @override
  String toString() {
    return 'Playlist(isProtected: $isProtected, id: $id, url: $url, playlistName: $playlistName, username: $username, password: $password, epgUrl: $epgUrl, playlistType: $playlistType, originType: $originType, originUrl: $originUrl)';
  }

  @override
  int get hashCode => isarId;

  @override
  bool operator ==(Object other) {
    if (other is! M3UPlaylist) return false;
    return hashCode == other.hashCode;
  }

  factory M3UPlaylist.fromJson(Map<String, dynamic> json) =>
      _$M3UPlaylistFromJson(json);
}
