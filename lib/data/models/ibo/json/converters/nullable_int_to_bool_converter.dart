import 'package:freezed_annotation/freezed_annotation.dart';

class NullableIntToBoolConverter implements JsonConverter<bool, int?> {
  const NullableIntToBoolConverter();

  @override
  bool fromJson(int? i) => int.tryParse('$i') == 1;

  @override
  int? toJson(bool v) => v ? 1 : 0;
}
