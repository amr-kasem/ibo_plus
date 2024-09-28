import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../../helpers/isar_helper.dart';

part 'm3u_playlist.g.dart';

@collection
class M3uPlaylistIsarModel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();

  final bool isProtected;
  final String id;
  Id get isarId => _isarHelper.fastHash(id);
  final String url;
  final String playlistName;
  final String username;
  final String password;
  final String epgUrl;
  final String playlistType;
  final String originType;
  final String originUrl;

  @ignore
  late Duration? expiray;
  late bool? active;
  int get isarExpiary => expiray?.inSeconds ?? -1;
  set isarExpiary(int i) => expiray = Duration(seconds: i);

  M3uPlaylistIsarModel({
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
    if (other is! M3uPlaylistIsarModel) return false;
    return hashCode == other.hashCode;
  }
}
