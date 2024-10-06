import 'package:get_it/get_it.dart';

import '../../../domain/entities/settings/device_id.dart';
import '../../../domain/entities/settings/settings.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/settings/settings.dart';
import '../playlist/playlist.dart';

class SettingsMapper {
  final _locator = GetIt.instance;
  late final _playlistMapper = _locator<PlaylistMapper>();
  SettingsIsarModel toIsarModel(Settings deviceId) {
    return SettingsIsarModel(
      id: 0,
      deviceId: deviceId.toString(),
    );
  }

  Settings toEntity(SettingsIsarModel settings) {
    return Settings(
      deviceId: DeviceId.fromMac(settings.deviceId),
      selectedPlaylist: settings.selectedPlaylist.value == null
          ? null
          : _playlistMapper.toEntity<M3uPlaylistIsarModel>(
              settings.selectedPlaylist.value!,
            ),
    );
  }
}
