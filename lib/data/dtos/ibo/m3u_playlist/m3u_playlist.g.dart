// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm3u_playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MuUPlaylistJsonModelImpl _$$MuUPlaylistJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MuUPlaylistJsonModelImpl(
      isProtected: const NullableIntToBoolSerializer()
          .fromJson((json['is_protected'] as num?)?.toInt()),
      id: json['id'] as String,
      url: json['url'] as String,
      playlistName: json['playlist_name'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      epgUrl: json['epg_url'] as String,
      playlistType: json['playlist_type'] as String,
      originType: json['origin_type'] as String,
      originUrl: json['origin_url'] as String,
    );

Map<String, dynamic> _$$MuUPlaylistJsonModelImplToJson(
        _$MuUPlaylistJsonModelImpl instance) =>
    <String, dynamic>{
      'is_protected':
          const NullableIntToBoolSerializer().toJson(instance.isProtected),
      'id': instance.id,
      'url': instance.url,
      'playlist_name': instance.playlistName,
      'username': instance.username,
      'password': instance.password,
      'epg_url': instance.epgUrl,
      'playlist_type': instance.playlistType,
      'origin_type': instance.originType,
      'origin_url': instance.originUrl,
    };
