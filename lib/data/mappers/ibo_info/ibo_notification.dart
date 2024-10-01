import '../../../domain/entities/settings/ibo_notification.dart';
import '../../../domain/value_objects/ibo/ibo_notification_data.dart';
import '../../dtos/ibo/ibo_notification/ibo_notification.dart';

class IboNotificationMapper {
  IboNotificationJsonModel toJsonModel(IboNotification notification) {
    return IboNotificationJsonModel(
      title: notification.data.title,
      content: notification.data.content,
    );
  }

  IboNotification toEntity(IboNotificationJsonModel iboNotificationJsonModel) {
    return IboNotification(
      data: IboNotificationData(
        title: iboNotificationJsonModel.title,
        content: iboNotificationJsonModel.content,
      ),
    );
  }
}
