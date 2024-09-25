// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TmdbCollectionJsonModelImpl _$$TmdbCollectionJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TmdbCollectionJsonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      posterPath: json['poster_path'] as String,
      backdropPath: json['backdrop_path'] as String,
    );

Map<String, dynamic> _$$TmdbCollectionJsonModelImplToJson(
        _$TmdbCollectionJsonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
    };
