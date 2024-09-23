import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../utils/app_utils.dart';
import 'movie_details_tmdb.dart';

part 'production_country.g.dart';

@collection
@JsonSerializable(fieldRename: FieldRename.snake)
class ProductionCountry {
  final String iso31661;
  final String name;

  final IsarLinks<MovieDetailsTmdb> movies = IsarLinks<MovieDetailsTmdb>();
  @JsonKey(includeToJson: false, includeFromJson: false)
  Id get isarId => AppUtils.fastHash(iso31661);

  ProductionCountry({
    required this.iso31661,
    required this.name,
  });

  factory ProductionCountry.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryFromJson(json);
}
