import '../entities/settings/device_id.dart';
import '../entities/settings/ibo_info.dart';
import '../entities/settings/user.dart';

abstract class UserRepository {
  Future<IboInfo> login(DeviceId deviceId);
  Future<User> getUser();
}
