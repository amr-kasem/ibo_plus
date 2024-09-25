import 'package:isar/isar.dart';

import 'movie_details_tmdb.dart';

part 'genre.g.dart';

@collection
class GenreIsarModel {
  final Id id;
  final String name;
  final IsarLinks<MovieDetailsTmdbIsarModel> movies =
      IsarLinks<MovieDetailsTmdbIsarModel>();

  GenreIsarModel({
    required this.id,
    required this.name,
  });
}
