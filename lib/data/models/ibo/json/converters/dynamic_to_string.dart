import 'package:freezed_annotation/freezed_annotation.dart';

class DynamicToStringConverter implements JsonConverter<String, dynamic> {
  const DynamicToStringConverter();

  @override
  String fromJson(dynamic value) => value?.toString() ?? '';

  @override
  dynamic toJson(String value) => value;
}
