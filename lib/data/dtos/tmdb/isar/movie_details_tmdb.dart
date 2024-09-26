import 'package:isar/isar.dart';

import 'genre.dart';
import 'production_company.dart';
import 'production_country.dart';
import 'spoken_language.dart';
import 'tmdb_collection.dart';

part 'movie_details_tmdb.g.dart';

@collection
class MovieDetailsTmdbIsarModel {
  final bool adult;
  final String backdropPath;
  @Backlink(to: 'movies')
  final IsarLink<TmdbCollectionIsarModel> belongsToCollection =
      IsarLink<TmdbCollectionIsarModel>();
  final int budget;
  @Backlink(to: 'movies')
  final IsarLinks<GenreIsarModel> genres = IsarLinks<GenreIsarModel>();
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
  final IsarLinks<ProductionCompanyIsarModel> productionCompanies =
      IsarLinks<ProductionCompanyIsarModel>();
  @Backlink(to: 'movies')
  final IsarLinks<ProductionCountryIsarModel> productionCountries =
      IsarLinks<ProductionCountryIsarModel>();
  final String releaseDate;
  final int revenue;
  final int runtime;
  @Backlink(to: 'movies')
  final IsarLinks<SpokenLanguageIsarModel> spokenLanguages =
      IsarLinks<SpokenLanguageIsarModel>();
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;

  MovieDetailsTmdbIsarModel({
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
}
