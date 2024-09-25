// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieJsonModelImpl _$$MovieJsonModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieJsonModelImpl(
      movieNum: (json['num'] as num?)?.toInt(),
      name: json['name'] as String,
      streamType: json['stream_type'] as String,
      streamId: (json['stream_id'] as num).toInt(),
      streamIcon: json['stream_icon'] as String?,
      rating: _$JsonConverterFromJson<String, double?>(
          json['rating'], const StringToNullableDoubleConverter().fromJson),
      rating5Based: (json['rating5_based'] as num?)?.toDouble(),
      added: json['added'] as String?,
      categoryId: _$JsonConverterFromJson<String, int?>(
          json['category_id'], const StringToNullableIntConverter().fromJson),
      containerExtension: json['container_extension'] as String? ?? "mp4",
      customSid: _$JsonConverterFromJson<String, int?>(
          json['custom_sid'], const StringToNullableIntConverter().fromJson),
    );

Map<String, dynamic> _$$MovieJsonModelImplToJson(
        _$MovieJsonModelImpl instance) =>
    <String, dynamic>{
      'num': instance.movieNum,
      'name': instance.name,
      'stream_type': instance.streamType,
      'stream_id': instance.streamId,
      'stream_icon': instance.streamIcon,
      'rating': const StringToNullableDoubleConverter().toJson(instance.rating),
      'rating5_based': instance.rating5Based,
      'added': instance.added,
      'category_id':
          const StringToNullableIntConverter().toJson(instance.categoryId),
      'container_extension': instance.containerExtension,
      'custom_sid':
          const StringToNullableIntConverter().toJson(instance.customSid),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
