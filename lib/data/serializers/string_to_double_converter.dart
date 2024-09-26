import 'package:freezed_annotation/freezed_annotation.dart';

class StringToDoubleSerializer implements JsonConverter<double, String> {
  const StringToDoubleSerializer();

  @override
  double fromJson(String s) => double.parse(s);

  @override
  String toJson(double i) => '$i';
}
