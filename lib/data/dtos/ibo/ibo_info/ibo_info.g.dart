// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibo_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IboInfoJsonModelImpl _$$IboInfoJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IboInfoJsonModelImpl(
      deviceId: json['mac_address'] as String,
      deviceKey: json['device_key'] as String,
      tmdbApiKey: json['tmdb_api_key'] as String,
      languages: (json['languages'] as List<dynamic>)
          .map((e) => LanguageJsonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) =>
              IboNotificationJsonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: UserJsonModel.fromJson(json['user'] as Map<String, dynamic>),
      playlists: (json['urls'] as List<dynamic>)
          .map((e) => M3uPlaylistJsonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IboInfoJsonModelImplToJson(
        _$IboInfoJsonModelImpl instance) =>
    <String, dynamic>{
      'mac_address': instance.deviceId,
      'device_key': instance.deviceKey,
      'tmdb_api_key': instance.tmdbApiKey,
      'languages': instance.languages,
      'notifications': instance.notifications,
      'user': instance.user,
      'urls': instance.playlists,
    };
