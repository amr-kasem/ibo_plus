import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibo_language_data.freezed.dart';

@freezed
class IboLanguageData with _$IboLanguageData {
  factory IboLanguageData({
    required String code,
    required String name,
    required Map<String, String> words,
  }) = _IboLanguageData;
}
