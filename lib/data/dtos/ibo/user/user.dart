import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibo_plus/data/serializers/nullable_int_to_bool.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserJsonModel with _$UserJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UserJsonModel({
    @JsonKey(name: 'mac_registered') required bool registerd,
    required bool hasOwnPlaylist,
    required int trialDays,
    @JsonKey(name: 'parent_pin') required String pin,
    @NullableIntToBoolSerializer() required bool isTrial,
    required DateTime expirayDate,
  }) = _UserData;

  factory UserJsonModel.fromJson(Map<String, dynamic> json) =>
      _$UserJsonModelFromJson(json);
}
