import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../../services/isar_helper.dart';
import 'm3u_playlist.dart';

part 'm3u_playlist_metadata.g.dart';

@collection
class M3uPlaylistMetadataIsarModel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();
  String playlistId;

  @ignore
  late Duration expiray;
  final bool active;
  int get isarExpiary => expiray.inSeconds;
  set isarExpiary(int i) => expiray = Duration(seconds: i);

  final playlist = IsarLink<M3uPlaylistIsarModel>();

  M3uPlaylistMetadataIsarModel({
    required this.playlistId,
    required this.active,
  }) {
    expiray = Duration.zero;
  }

  Id get isarId => _isarHelper.fastHash(playlistId);

  @override
  int get hashCode => isarId.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is! M3uPlaylistMetadataIsarModel) return false;
    return hashCode == other.hashCode;
  }
}
