import '../value_objects/ibo/ibo_info_data.dart';
import 'device_id.dart';
import 'ibo_lanugage.dart';
import 'ibo_notification.dart';
import 'playlist.dart';
import 'user.dart';

class IboInfo {
  final DeviceId deviceId;
  final List<IboNotification> notifications;
  final List<IboLanguage> languages;
  final User user;
  final IboInfoData data;
  final List<Playlist> playlists;

  IboInfo({
    required this.deviceId,
    required this.notifications,
    required this.languages,
    required this.user,
    required this.data,
    required this.playlists,
  });
}
