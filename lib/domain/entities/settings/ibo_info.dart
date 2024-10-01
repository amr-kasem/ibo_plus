import '../../value_objects/ibo/ibo_info_data.dart';
import 'device_id.dart';
import 'ibo_lanugage.dart';
import 'ibo_notification.dart';
import '../playlist/playlist.dart';
import 'user.dart';

class IboInfo {
  DeviceId deviceId;
  List<IboNotification> notifications;
  List<IboLanguage> languages;
  User user;
  IboInfoData data;
  List<Playlist> playlists;

  IboInfo({
    required this.deviceId,
    required this.notifications,
    required this.languages,
    required this.user,
    required this.data,
    required this.playlists,
  });
}
