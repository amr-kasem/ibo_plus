import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibo_notification.freezed.dart';
part 'ibo_notification.g.dart';

@freezed
class IboNotificationJsonModel with _$IboNotificationJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory IboNotificationJsonModel({
    required String title,
    required String content,
  }) = _IboNotificationJsonModel;
  factory IboNotificationJsonModel.fromJson(Map<String, dynamic> json) =>
      _$IboNotificationJsonModelFromJson(json);
}
