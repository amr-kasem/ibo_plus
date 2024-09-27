import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibo_notification_data.freezed.dart';

@freezed
class IboNotificationData with _$IboNotificationData {
  factory IboNotificationData({
    required String title,
    required String content,
  }) = _IboNotificationData;
}
