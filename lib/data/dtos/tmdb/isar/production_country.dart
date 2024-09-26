import 'package:isar/isar.dart';

import '../../../../utils/app_utils.dart';
import 'movie_details_tmdb.dart';

part 'production_country.g.dart';

@collection
class ProductionCountryIsarModel {
  final String iso31661;
  final String name;

  final IsarLinks<MovieDetailsTmdbIsarModel> movies =
      IsarLinks<MovieDetailsTmdbIsarModel>();
  Id get isarId => AppUtils.fastHash(iso31661);

  ProductionCountryIsarModel({
    required this.iso31661,
    required this.name,
  });
}
