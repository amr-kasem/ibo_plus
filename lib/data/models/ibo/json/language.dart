import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';
part 'language.g.dart';

@freezed
class LanguageJsonModel with _$LanguageJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LanguageJsonModel({
    required String code,
    required String name,
    required Map<String, dynamic> words,
  }) = _LanguageJsonModel;

  factory LanguageJsonModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageJsonModelFromJson(json);
}
