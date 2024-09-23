import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../utils/app_utils.dart';

part 'language.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@collection
class Language {
  final String code;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Id get isarId => AppUtils.fastHash(code);
  final String name;

  @ignore
  late Map<String, dynamic> words;
  @JsonKey(includeToJson: false, includeFromJson: false)
  String get isarWords => jsonEncode(words);
  set isarWords(String json) => words = jsonDecode(json);

  Language({
    required this.code,
    required this.name,
  });

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  @override
  String toString() {
    return 'Language(code: $code, name: $name, words: $words)';
  }

  @override
  int get hashCode => isarId;

  @override
  bool operator ==(Object other) {
    if (other is! Language) return false;
    return hashCode == other.hashCode;
  }
}
