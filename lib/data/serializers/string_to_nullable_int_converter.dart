import 'package:freezed_annotation/freezed_annotation.dart';

class StringToNullableIntSerailizer implements JsonConverter<int?, String> {
  const StringToNullableIntSerailizer();

  @override
  // ignore: unnecessary_string_interpolations
  int? fromJson(String s) => int.tryParse('$s');

  @override
  String toJson(int? i) => '$i';
}
