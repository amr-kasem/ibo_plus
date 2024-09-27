import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    required bool registerd,
    required bool hasOwnPlaylist,
    required int trialDays,
    required String pin,
    required bool isTrial,
    required DateTime expirayDate,
  }) = _UserData;
}
