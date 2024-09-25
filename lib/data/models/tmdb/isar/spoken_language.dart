import 'package:isar/isar.dart';

import '../../../../utils/app_utils.dart';
import 'movie_details_tmdb.dart';

part 'spoken_language.g.dart';

@collection
class SpokenLanguageIsarModel {
  final String englishName;
  final String iso6391;
  final String name;
  final IsarLinks<MovieDetailsTmdbIsarModel> movies =
      IsarLinks<MovieDetailsTmdbIsarModel>();
  Id get isarId => AppUtils.fastHash(iso6391);

  SpokenLanguageIsarModel({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });
}
