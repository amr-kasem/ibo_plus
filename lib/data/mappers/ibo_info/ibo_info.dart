import 'package:get_it/get_it.dart';

import '../../../domain/entities/settings/device_id.dart';
import '../../../domain/entities/settings/ibo_info.dart';
import '../../../domain/value_objects/ibo/ibo_info_data.dart';
import '../../dtos/ibo/ibo_info/ibo_info.dart';
import '../../dtos/ibo/m3u_playlist/m3u_playlist.dart';
import '../playlist/playlist.dart';
import 'ibo_language.dart';
import 'ibo_notification.dart';
import 'user.dart';

class IboInfoMapper {
  final _locator = GetIt.instance;
  late final _userMapper = _locator.get<UserMapper>();
  late final _iboLanguageMapper = _locator.get<IboLanguageMapper>();
  late final _iboNotificationMapper = _locator.get<IboNotificationMapper>();
  late final _playlistMapper = _locator.get<PlaylistMapper>();
  IboInfoJsonModel toJsonModel(IboInfo iboInfo) {
    return IboInfoJsonModel(
      deviceId: iboInfo.deviceId.toString(),
      deviceKey: iboInfo.data.devicekKey,
      languages: iboInfo.languages.map(_iboLanguageMapper.toJsonModel).toList(),
      notifications: iboInfo.notifications
          .map(_iboNotificationMapper.toJsonModel)
          .toList(),
      tmdbApiKey: iboInfo.data.tmdbApiKey,
      user: _userMapper.toJsonModel(iboInfo.user),
      playlists: iboInfo.playlists.map(_playlistMapper.toJsonModel).toList(),
    );
  }

  IboInfo toEntity(IboInfoJsonModel iboInfoJsonModel) {
    return IboInfo(
      deviceId: DeviceId.fromMac(iboInfoJsonModel.deviceId),
      data: IboInfoData(
        devicekKey: iboInfoJsonModel.deviceKey,
        tmdbApiKey: iboInfoJsonModel.tmdbApiKey,
      ),
      languages:
          iboInfoJsonModel.languages.map(_iboLanguageMapper.toEntity).toList(),
      notifications: iboInfoJsonModel.notifications
          .map(_iboNotificationMapper.toEntity)
          .toList(),
      user: _userMapper.toEntity(iboInfoJsonModel.user),
      playlists: iboInfoJsonModel.playlists
          .map(_playlistMapper.toEntity<M3uPlaylistJsonModel>)
          .toList(),
    );
  }
}
