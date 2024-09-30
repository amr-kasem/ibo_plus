import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../services/isar_helper.dart';
import 'movie_details_tmdb.dart';

part 'spoken_language.g.dart';

@collection
class SpokenLanguageIsarModel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();
  final String englishName;
  final String iso6391;
  final String name;
  final IsarLinks<MovieDetailsTmdbIsarModel> movies =
      IsarLinks<MovieDetailsTmdbIsarModel>();
  Id get isarId => _isarHelper.fastHash(iso6391);

  SpokenLanguageIsarModel({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });
}
