import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../../services/isar_helper.dart';

part 'm3u_playlist_metadata.g.dart';

@collection
class M3uPlaylistMetadataIsarModel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();

  final String id;
  Id get isarId => _isarHelper.fastHash(id);

  @ignore
  late Duration expiray;
  final bool active;
  int get isarExpiary => expiray.inSeconds;
  set isarExpiary(int i) => expiray = Duration(seconds: i);

  M3uPlaylistMetadataIsarModel({
    required this.id,
    required this.active,
  }) {
    expiray = Duration.zero;
  }

  @override
  int get hashCode => isarId;

  @override
  bool operator ==(Object other) {
    if (other is! M3uPlaylistMetadataIsarModel) return false;
    return hashCode == other.hashCode;
  }
}
