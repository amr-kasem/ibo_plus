import 'package:isar/isar.dart';

import '../playlist/m3u_playlist/m3u_playlist.dart';

part 'settings.g.dart';

@collection
class SettingsIsarModel {
  final Id id;
  final String deviceId;
  final IsarLink<M3uPlaylistIsarModel> selectedPlaylist =
      IsarLink<M3uPlaylistIsarModel>();
  SettingsIsarModel({
    required this.id,
    required this.deviceId,
  });
}
