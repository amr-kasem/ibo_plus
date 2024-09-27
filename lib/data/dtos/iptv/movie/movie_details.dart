import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetailsJsonModel with _$MovieDetailsJsonModel {
  const factory MovieDetailsJsonModel({
    required String? movieImage,
    required String? tmdbId,
    required String? backdrop,
    required String? youtubeTrailer,
    required String? genre,
    required String? plot,
    required String? cast,
    required String? rating,
    required String? director,
    required String? releasedate,
    required List<String>? backdropPath,
    required String? durationSecs,
    required String? duration,
  }) = _MovieDetailsJsonModel;

  factory MovieDetailsJsonModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsJsonModelFromJson(json);
}
