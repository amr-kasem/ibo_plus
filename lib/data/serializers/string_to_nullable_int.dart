import 'package:freezed_annotation/freezed_annotation.dart';

class StringToNullableIntSerializer implements JsonConverter<int?, String> {
  const StringToNullableIntSerializer();

  @override
  // ignore: unnecessary_string_interpolations
  int? fromJson(String s) => int.tryParse('$s');

  @override
  String toJson(int? i) => '$i';
}
