import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_id.freezed.dart';

@freezed
class DeviceIdData with _$DeviceIdData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DeviceIdData({required String value}) = _DeviceIdData;
}
