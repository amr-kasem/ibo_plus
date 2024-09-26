import 'dart:convert';

import 'package:isar/isar.dart';

import '../../../../utils/app_utils.dart';

part 'language.g.dart';

@collection
class Language {
  final String code;
  Id get isarId => AppUtils.fastHash(code);
  final String name;

  @ignore
  late Map<String, dynamic> words;
  String get isarWords => jsonEncode(words);
  set isarWords(String json) => words = jsonDecode(json);

  Language({
    required this.code,
    required this.name,
  });

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
