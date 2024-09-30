import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../../services/isar_helper.dart';

part 'language.g.dart';

@collection
class Language {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();

  final String code;
  Id get isarId => _isarHelper.fastHash(code);
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
