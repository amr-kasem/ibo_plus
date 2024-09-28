// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_channel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveChannelDataImpl _$$LiveChannelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LiveChannelDataImpl(
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
      epgListings: (json['epg_listings'] as List<dynamic>?)
          ?.map((e) => EPGJsonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAdult: const NullableIntToBoolSerializer()
          .fromJson((json['is_adult'] as num).toInt()),
    );

Map<String, dynamic> _$$LiveChannelDataImplToJson(
        _$LiveChannelDataImpl instance) =>
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
      'epg_listings': instance.epgListings,
      'is_adult': const NullableIntToBoolSerializer().toJson(instance.isAdult),
    };
