import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import 'movie_details_tmdb.dart';

part 'genre.g.dart';

@collection
@JsonSerializable(fieldRename: FieldRename.snake)
class Genre {
  final Id id;
  final String name;
  final IsarLinks<MovieDetailsTmdb> movies = IsarLinks<MovieDetailsTmdb>();

  Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
