import '../value_objects/ibo/ibo_language_data.dart';

class IboLanguage {
  IboLanguageData data;

  IboLanguage({required this.data});

  @override
  bool operator ==(Object other) {
    if (other is! IboLanguage) return false;
    return hashCode == other.hashCode;
  }

  @override
  int get hashCode => data.hashCode;

  @override
  String toString() => 'IboLanugage{data: $data}';
}
