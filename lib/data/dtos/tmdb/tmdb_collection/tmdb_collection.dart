import 'package:freezed_annotation/freezed_annotation.dart';

part 'tmdb_collection.g.dart';
part 'tmdb_collection.freezed.dart';

@freezed
class TmdbCollectionJsonModel with _$TmdbCollectionJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TmdbCollectionJsonModel({
    required int id,
    required String name,
    required String posterPath,
    required String backdropPath,
  }) = _TmdbCollectionJsonModel;

  factory TmdbCollectionJsonModel.fromJson(Map<String, dynamic> json) =>
      _$TmdbCollectionJsonModelFromJson(json);
}
