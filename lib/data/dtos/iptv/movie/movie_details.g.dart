// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailsJsonModelImpl _$$MovieDetailsJsonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailsJsonModelImpl(
      movieImage: json['movieImage'] as String?,
      tmdbId: json['tmdbId'] as String?,
      backdrop: json['backdrop'] as String?,
      youtubeTrailer: json['youtubeTrailer'] as String?,
      genre: json['genre'] as String?,
      plot: json['plot'] as String?,
      cast: json['cast'] as String?,
      rating: json['rating'] as String?,
      director: json['director'] as String?,
      releasedate: json['releasedate'] as String?,
      backdropPath: (json['backdropPath'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      durationSecs: json['durationSecs'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$$MovieDetailsJsonModelImplToJson(
        _$MovieDetailsJsonModelImpl instance) =>
    <String, dynamic>{
      'movieImage': instance.movieImage,
      'tmdbId': instance.tmdbId,
      'backdrop': instance.backdrop,
      'youtubeTrailer': instance.youtubeTrailer,
      'genre': instance.genre,
      'plot': instance.plot,
      'cast': instance.cast,
      'rating': instance.rating,
      'director': instance.director,
      'releasedate': instance.releasedate,
      'backdropPath': instance.backdropPath,
      'durationSecs': instance.durationSecs,
      'duration': instance.duration,
    };
