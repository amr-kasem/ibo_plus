import 'package:freezed_annotation/freezed_annotation.dart';

class NullableIntToBoolSerializer implements JsonConverter<bool, int?> {
  const NullableIntToBoolSerializer();

  @override
  bool fromJson(int? i) => int.tryParse('$i') == 1;

  @override
  int? toJson(bool v) => v ? 1 : 0;
}
