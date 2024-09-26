import 'package:isar/isar.dart';

import '../../../../utils/app_utils.dart';

part 'm3u_playlist.g.dart';

@collection
class M3UPlaylist {
  final bool isProtected;
  final String id;
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
  late Duration expiray;
  late bool connected;
  late bool active;
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
}
