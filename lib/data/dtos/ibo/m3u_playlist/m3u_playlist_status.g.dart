// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm3u_playlist_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$M3uPlaylistStatusJsonModelImpl _$$M3uPlaylistStatusJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$M3uPlaylistStatusJsonModelImpl(
      activeSubscription: json['active_subscription'] as bool,
      expirayDuration:
          Duration(microseconds: (json['expiray_duration'] as num).toInt()),
    );

Map<String, dynamic> _$$M3uPlaylistStatusJsonModelImplToJson(
        _$M3uPlaylistStatusJsonModelImpl instance) =>
    <String, dynamic>{
      'active_subscription': instance.activeSubscription,
      'expiray_duration': instance.expirayDuration.inMicroseconds,
    };
