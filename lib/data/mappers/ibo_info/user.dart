import 'package:ibo_plus/data/dtos/ibo/user/user.dart';
import 'package:ibo_plus/domain/entities/settings/user.dart';

import '../../../domain/value_objects/ibo/user_data.dart';

class UserMapper {
  UserJsonModel toJsonModel(User user) {
    return UserJsonModel(
      expirayDate: user.userData.expirayDate,
      hasOwnPlaylist: user.userData.hasOwnPlaylist,
      isTrial: user.userData.isTrial,
      pin: user.userData.pin,
      registerd: user.userData.registerd,
      trialDays: user.userData.trialDays,
    );
  }

  User toEntity(UserJsonModel userJsonModel) {
    return User(
      userData: UserData(
        expirayDate: userJsonModel.expirayDate,
        hasOwnPlaylist: userJsonModel.hasOwnPlaylist,
        isTrial: userJsonModel.isTrial,
        pin: userJsonModel.pin,
        registerd: userJsonModel.registerd,
        trialDays: userJsonModel.trialDays,
      ),
    );
  }
}
