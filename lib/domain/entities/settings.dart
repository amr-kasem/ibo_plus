import 'device_id.dart';
import 'playlist.dart';

class Settings {
  final DeviceId deviceId;
  final Playlist? selectedPlaylist;
  Settings({
    required this.deviceId,
    this.selectedPlaylist,
  });
}
