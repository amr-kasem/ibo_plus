import '../../value_objects/ibo/ibo_notification_data.dart';

class IboNotification {
  IboNotificationData data;

  IboNotification({required this.data});

  @override
  bool operator ==(Object other) {
    if (other is! IboNotification) return false;
    return data == other.data;
  }
}
