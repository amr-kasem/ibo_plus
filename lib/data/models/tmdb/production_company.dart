import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import 'movie_details_tmdb.dart';

part 'production_company.g.dart';

@collection
@JsonSerializable(fieldRename: FieldRename.snake)
class ProductionCompany {
  final Id id;
  final String name;
  final String originCountry;
  final String logoPath;
  final IsarLinks<MovieDetailsTmdb> movies = IsarLinks<MovieDetailsTmdb>();

  ProductionCompany({
    required this.id,
    required this.name,
    required this.originCountry,
    required this.logoPath,
  });

  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyFromJson(json);
}
