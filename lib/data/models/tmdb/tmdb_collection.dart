import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import 'movie_details_tmdb.dart';

part 'tmdb_collection.g.dart';

@collection
@JsonSerializable(fieldRename: FieldRename.snake)
class TmdbCollection {
  final Id id;
  final String name;
  final String posterPath;
  final String backdropPath;
  final IsarLinks<MovieDetailsTmdb> movies = IsarLinks<MovieDetailsTmdb>();

  TmdbCollection({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  factory TmdbCollection.fromJson(Map<String, dynamic> json) =>
      _$TmdbCollectionFromJson(json);
}
