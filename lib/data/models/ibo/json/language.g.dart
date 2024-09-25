// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageJsonModelImpl _$$LanguageJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageJsonModelImpl(
      code: json['code'] as String,
      name: json['name'] as String,
      words: json['words'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$LanguageJsonModelImplToJson(
        _$LanguageJsonModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'words': instance.words,
    };
