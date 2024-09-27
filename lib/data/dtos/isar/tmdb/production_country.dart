import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../helpers/isar_helper.dart';
import 'movie_details_tmdb.dart';

part 'production_country.g.dart';

@collection
class ProductionCountryIsarModel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();
  final String iso31661;
  final String name;

  final IsarLinks<MovieDetailsTmdbIsarModel> movies =
      IsarLinks<MovieDetailsTmdbIsarModel>();
  Id get isarId => _isarHelper.fastHash(iso31661);

  ProductionCountryIsarModel({
    required this.iso31661,
    required this.name,
  });
}
