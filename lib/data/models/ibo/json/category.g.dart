// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryJsonModelImpl _$$CategoryJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryJsonModelImpl(
      categoryId:
          const StringToIntConverter().fromJson(json['category_id'] as String),
      categoryName: json['category_name'] as String,
      parentId: (json['parent_id'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoryJsonModelImplToJson(
        _$CategoryJsonModelImpl instance) =>
    <String, dynamic>{
      'category_id': const StringToIntConverter().toJson(instance.categoryId),
      'category_name': instance.categoryName,
      'parent_id': instance.parentId,
    };
