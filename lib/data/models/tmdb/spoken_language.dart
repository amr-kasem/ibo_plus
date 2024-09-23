import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../utils/app_utils.dart';
import 'movie_details_tmdb.dart';

part 'spoken_language.g.dart';

@collection
@JsonSerializable(fieldRename: FieldRename.snake)
class SpokenLanguage {
  final String englishName;
  final String iso6391;
  final String name;
  final IsarLinks<MovieDetailsTmdb> movies = IsarLinks<MovieDetailsTmdb>();
  @JsonKey(includeToJson: false, includeFromJson: false)
  Id get isarId => AppUtils.fastHash(iso6391);

  SpokenLanguage({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageFromJson(json);
}
