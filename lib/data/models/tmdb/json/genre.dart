import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'genre.g.dart';
part 'genre.freezed.dart';

@freezed
class Genre with _$Genre {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
