import '../entities/device_id.dart';
import '../entities/ibo_info.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<IboInfo> login(DeviceId deviceId);
  Future<User> getUser();
}
