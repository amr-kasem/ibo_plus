import 'package:freezed_annotation/freezed_annotation.dart';

class StringToDoubleConverter implements JsonConverter<double, String> {
  const StringToDoubleConverter();

  @override
  double fromJson(String s) => double.parse(s);

  @override
  String toJson(double i) => '$i';
}
