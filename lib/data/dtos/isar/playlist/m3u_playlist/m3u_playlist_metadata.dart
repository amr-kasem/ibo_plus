import 'package:isar/isar.dart';

import 'm3u_playlist.dart';

part 'm3u_playlist_metadata.g.dart';

@collection
class M3uPlaylistMetadataIsarModel {
  Id? id;

  @ignore
  late Duration expiray;
  final bool active;
  int get isarExpiary => expiray.inSeconds;
  set isarExpiary(int i) => expiray = Duration(seconds: i);

  final playlist = IsarLink<M3uPlaylistIsarModel>();

  M3uPlaylistMetadataIsarModel({
    required this.active,
  }) {
    expiray = Duration.zero;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is! M3uPlaylistMetadataIsarModel) return false;
    return hashCode == other.hashCode;
  }
}
