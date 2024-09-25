import 'package:freezed_annotation/freezed_annotation.dart';

class StringToNullableDoubleConverter
    implements JsonConverter<double?, String> {
  const StringToNullableDoubleConverter();

  @override
  // ignore: unnecessary_string_interpolations
  double? fromJson(String s) => double.tryParse('$s');

  @override
  String toJson(double? i) => '$i';
}
