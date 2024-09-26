import 'package:isar/isar.dart';

import 'movie_details_tmdb.dart';

part 'tmdb_collection.g.dart';

@collection
class TmdbCollectionIsarModel {
  final Id id;
  final String name;
  final String posterPath;
  final String backdropPath;
  final IsarLinks<MovieDetailsTmdbIsarModel> movies =
      IsarLinks<MovieDetailsTmdbIsarModel>();

  TmdbCollectionIsarModel({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });
}
