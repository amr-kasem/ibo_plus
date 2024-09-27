// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCompanyJsonModelImpl _$$ProductionCompanyJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCompanyJsonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      originCountry: json['origin_country'] as String,
      logoPath: json['logo_path'] as String,
    );

Map<String, dynamic> _$$ProductionCompanyJsonModelImplToJson(
        _$ProductionCompanyJsonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin_country': instance.originCountry,
      'logo_path': instance.logoPath,
    };
