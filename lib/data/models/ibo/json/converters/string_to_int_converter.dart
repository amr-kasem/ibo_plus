import 'package:freezed_annotation/freezed_annotation.dart';

class StringToIntConverter implements JsonConverter<int, String> {
  const StringToIntConverter();

  @override
  int fromJson(String s) => int.parse(s);

  @override
  String toJson(int i) => '$i';
}
