import 'package:freezed_annotation/freezed_annotation.dart';

class StringToIntSerializer implements JsonConverter<int, String> {
  const StringToIntSerializer();

  @override
  int fromJson(String s) => int.parse(s);

  @override
  String toJson(int i) => '$i';
}
