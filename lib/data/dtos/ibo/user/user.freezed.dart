// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserJsonModel _$UserJsonModelFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserJsonModel {
  @JsonKey(name: 'mac_registered')
  bool get registerd => throw _privateConstructorUsedError;
  bool get hasOwnPlaylist => throw _privateConstructorUsedError;
  int get trialDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_pin')
  String get pin => throw _privateConstructorUsedError;
  @NullableIntToBoolSerializer()
  bool get isTrial => throw _privateConstructorUsedError;
  DateTime get expirayDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserJsonModelCopyWith<UserJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserJsonModelCopyWith<$Res> {
  factory $UserJsonModelCopyWith(
          UserJsonModel value, $Res Function(UserJsonModel) then) =
      _$UserJsonModelCopyWithImpl<$Res, UserJsonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mac_registered') bool registerd,
      bool hasOwnPlaylist,
      int trialDays,
      @JsonKey(name: 'parent_pin') String pin,
      @NullableIntToBoolSerializer() bool isTrial,
      DateTime expirayDate});
}

/// @nodoc
class _$UserJsonModelCopyWithImpl<$Res, $Val extends UserJsonModel>
    implements $UserJsonModelCopyWith<$Res> {
  _$UserJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerd = null,
    Object? hasOwnPlaylist = null,
    Object? trialDays = null,
    Object? pin = null,
    Object? isTrial = null,
    Object? expirayDate = null,
  }) {
    return _then(_value.copyWith(
      registerd: null == registerd
          ? _value.registerd
          : registerd // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOwnPlaylist: null == hasOwnPlaylist
          ? _value.hasOwnPlaylist
          : hasOwnPlaylist // ignore: cast_nullable_to_non_nullable
              as bool,
      trialDays: null == trialDays
          ? _value.trialDays
          : trialDays // ignore: cast_nullable_to_non_nullable
              as int,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      isTrial: null == isTrial
          ? _value.isTrial
          : isTrial // ignore: cast_nullable_to_non_nullable
              as bool,
      expirayDate: null == expirayDate
          ? _value.expirayDate
          : expirayDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserJsonModelCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mac_registered') bool registerd,
      bool hasOwnPlaylist,
      int trialDays,
      @JsonKey(name: 'parent_pin') String pin,
      @NullableIntToBoolSerializer() bool isTrial,
      DateTime expirayDate});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserJsonModelCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerd = null,
    Object? hasOwnPlaylist = null,
    Object? trialDays = null,
    Object? pin = null,
    Object? isTrial = null,
    Object? expirayDate = null,
  }) {
    return _then(_$UserDataImpl(
      registerd: null == registerd
          ? _value.registerd
          : registerd // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOwnPlaylist: null == hasOwnPlaylist
          ? _value.hasOwnPlaylist
          : hasOwnPlaylist // ignore: cast_nullable_to_non_nullable
              as bool,
      trialDays: null == trialDays
          ? _value.trialDays
          : trialDays // ignore: cast_nullable_to_non_nullable
              as int,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      isTrial: null == isTrial
          ? _value.isTrial
          : isTrial // ignore: cast_nullable_to_non_nullable
              as bool,
      expirayDate: null == expirayDate
          ? _value.expirayDate
          : expirayDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$UserDataImpl implements _UserData {
  _$UserDataImpl(
      {@JsonKey(name: 'mac_registered') required this.registerd,
      required this.hasOwnPlaylist,
      required this.trialDays,
      @JsonKey(name: 'parent_pin') required this.pin,
      @NullableIntToBoolSerializer() required this.isTrial,
      required this.expirayDate});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: 'mac_registered')
  final bool registerd;
  @override
  final bool hasOwnPlaylist;
  @override
  final int trialDays;
  @override
  @JsonKey(name: 'parent_pin')
  final String pin;
  @override
  @NullableIntToBoolSerializer()
  final bool isTrial;
  @override
  final DateTime expirayDate;

  @override
  String toString() {
    return 'UserJsonModel(registerd: $registerd, hasOwnPlaylist: $hasOwnPlaylist, trialDays: $trialDays, pin: $pin, isTrial: $isTrial, expirayDate: $expirayDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.registerd, registerd) ||
                other.registerd == registerd) &&
            (identical(other.hasOwnPlaylist, hasOwnPlaylist) ||
                other.hasOwnPlaylist == hasOwnPlaylist) &&
            (identical(other.trialDays, trialDays) ||
                other.trialDays == trialDays) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.isTrial, isTrial) || other.isTrial == isTrial) &&
            (identical(other.expirayDate, expirayDate) ||
                other.expirayDate == expirayDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, registerd, hasOwnPlaylist,
      trialDays, pin, isTrial, expirayDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserJsonModel {
  factory _UserData(
      {@JsonKey(name: 'mac_registered') required final bool registerd,
      required final bool hasOwnPlaylist,
      required final int trialDays,
      @JsonKey(name: 'parent_pin') required final String pin,
      @NullableIntToBoolSerializer() required final bool isTrial,
      required final DateTime expirayDate}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: 'mac_registered')
  bool get registerd;
  @override
  bool get hasOwnPlaylist;
  @override
  int get trialDays;
  @override
  @JsonKey(name: 'parent_pin')
  String get pin;
  @override
  @NullableIntToBoolSerializer()
  bool get isTrial;
  @override
  DateTime get expirayDate;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
