import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import 'genre.dart';
import 'production_company.dart';
import 'production_country.dart';
import 'spoken_language.dart';
import 'tmdb_collection.dart';

part 'movie_details_tmdb.g.dart';

@collection
@JsonSerializable(fieldRename: FieldRename.snake)
class MovieDetailsTmdb {
  final bool adult;
  final String backdropPath;
  @Backlink(to: 'movies')
  final IsarLink<TmdbCollection> belongsToCollection =
      IsarLink<TmdbCollection>();
  final int budget;
  @Backlink(to: 'movies')
  final IsarLinks<Genre> genres = IsarLinks<Genre>();
  final String homepage;
  final Id id;
  final String imdbId;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  @Backlink(to: 'movies')
  final IsarLinks<ProductionCompany> productionCompanies =
      IsarLinks<ProductionCompany>();
  @Backlink(to: 'movies')
  final IsarLinks<ProductionCountry> productionCountries =
      IsarLinks<ProductionCountry>();
  final String releaseDate;
  final int revenue;
  final int runtime;
  @Backlink(to: 'movies')
  final IsarLinks<SpokenLanguage> spokenLanguages = IsarLinks<SpokenLanguage>();
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;

  MovieDetailsTmdb({
    required this.adult,
    required this.backdropPath,
    required this.budget,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
  });

  factory MovieDetailsTmdb.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsTmdbFromJson(json);
}
