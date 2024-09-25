// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveChannelJsonModelImpl _$$LiveChannelJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LiveChannelJsonModelImpl(
      channelNum: (json['num'] as num?)?.toInt(),
      name: json['name'] as String,
      streamType: json['stream_type'] as String,
      streamId: (json['stream_id'] as num).toInt(),
      streamIcon: json['stream_icon'] as String?,
      epgChannelId: json['epg_channel_id'] as String?,
      added: json['added'] as String?,
      categoryId: json['category_id'] as String?,
      customSid: json['custom_sid'] as String?,
      tvArchive: (json['tv_archive'] as num?)?.toInt(),
      directSource: json['direct_source'] as String?,
      tvArchiveDuration: const DynamicToStringConverter()
          .fromJson(json['tv_archive_duration']),
      epgListings: (json['epg_listings'] as List<dynamic>?)
          ?.map((e) => EPGJsonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAdult: const NullableIntToBoolConverter()
          .fromJson((json['is_adult'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$LiveChannelJsonModelImplToJson(
        _$LiveChannelJsonModelImpl instance) =>
    <String, dynamic>{
      'num': instance.channelNum,
      'name': instance.name,
      'stream_type': instance.streamType,
      'stream_id': instance.streamId,
      'stream_icon': instance.streamIcon,
      'epg_channel_id': instance.epgChannelId,
      'added': instance.added,
      'category_id': instance.categoryId,
      'custom_sid': instance.customSid,
      'tv_archive': instance.tvArchive,
      'direct_source': instance.directSource,
      'tv_archive_duration': _$JsonConverterToJson<dynamic, String>(
          instance.tvArchiveDuration, const DynamicToStringConverter().toJson),
      'epg_listings': instance.epgListings,
      'is_adult': _$JsonConverterToJson<int?, bool>(
          instance.isAdult, const NullableIntToBoolConverter().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
