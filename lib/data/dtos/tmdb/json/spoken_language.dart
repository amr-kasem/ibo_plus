import 'package:freezed_annotation/freezed_annotation.dart';

part 'spoken_language.g.dart';
part 'spoken_language.freezed.dart';

@freezed
class SpokenLanguageJsonModel with _$SpokenLanguageJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SpokenLanguageJsonModel({
    required String englishName,
    required String iso6391,
    required String name,
  }) = _SpokenLanguageJsonModel;

  factory SpokenLanguageJsonModel.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageJsonModelFromJson(json);
}
