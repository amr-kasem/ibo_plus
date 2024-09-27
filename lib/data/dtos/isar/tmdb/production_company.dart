import 'package:isar/isar.dart';

import 'movie_details_tmdb.dart';

part 'production_company.g.dart';

@collection
class ProductionCompanyIsarModel {
  final Id id;
  final String name;
  final String originCountry;
  final String logoPath;
  final IsarLinks<MovieDetailsTmdbIsarModel> movies =
      IsarLinks<MovieDetailsTmdbIsarModel>();

  ProductionCompanyIsarModel({
    required this.id,
    required this.name,
    required this.originCountry,
    required this.logoPath,
  });
}
