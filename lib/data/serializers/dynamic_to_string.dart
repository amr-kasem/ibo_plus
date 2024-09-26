import 'package:freezed_annotation/freezed_annotation.dart';

class DynamicToStringSerializer implements JsonConverter<String, dynamic> {
  const DynamicToStringSerializer();

  @override
  String fromJson(dynamic value) => value?.toString() ?? '';

  @override
  dynamic toJson(String value) => value;
}
