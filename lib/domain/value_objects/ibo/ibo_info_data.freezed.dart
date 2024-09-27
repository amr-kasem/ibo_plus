// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibo_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IboInfoData {
  String get tmdbApiKey => throw _privateConstructorUsedError;
  String get devicekKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IboInfoDataCopyWith<IboInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IboInfoDataCopyWith<$Res> {
  factory $IboInfoDataCopyWith(
          IboInfoData value, $Res Function(IboInfoData) then) =
      _$IboInfoDataCopyWithImpl<$Res, IboInfoData>;
  @useResult
  $Res call({String tmdbApiKey, String devicekKey});
}

/// @nodoc
class _$IboInfoDataCopyWithImpl<$Res, $Val extends IboInfoData>
    implements $IboInfoDataCopyWith<$Res> {
  _$IboInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tmdbApiKey = null,
    Object? devicekKey = null,
  }) {
    return _then(_value.copyWith(
      tmdbApiKey: null == tmdbApiKey
          ? _value.tmdbApiKey
          : tmdbApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      devicekKey: null == devicekKey
          ? _value.devicekKey
          : devicekKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IboInfoDataImplCopyWith<$Res>
    implements $IboInfoDataCopyWith<$Res> {
  factory _$$IboInfoDataImplCopyWith(
          _$IboInfoDataImpl value, $Res Function(_$IboInfoDataImpl) then) =
      __$$IboInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tmdbApiKey, String devicekKey});
}

/// @nodoc
class __$$IboInfoDataImplCopyWithImpl<$Res>
    extends _$IboInfoDataCopyWithImpl<$Res, _$IboInfoDataImpl>
    implements _$$IboInfoDataImplCopyWith<$Res> {
  __$$IboInfoDataImplCopyWithImpl(
      _$IboInfoDataImpl _value, $Res Function(_$IboInfoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tmdbApiKey = null,
    Object? devicekKey = null,
  }) {
    return _then(_$IboInfoDataImpl(
      tmdbApiKey: null == tmdbApiKey
          ? _value.tmdbApiKey
          : tmdbApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      devicekKey: null == devicekKey
          ? _value.devicekKey
          : devicekKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IboInfoDataImpl implements _IboInfoData {
  _$IboInfoDataImpl({required this.tmdbApiKey, required this.devicekKey});

  @override
  final String tmdbApiKey;
  @override
  final String devicekKey;

  @override
  String toString() {
    return 'IboInfoData(tmdbApiKey: $tmdbApiKey, devicekKey: $devicekKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IboInfoDataImpl &&
            (identical(other.tmdbApiKey, tmdbApiKey) ||
                other.tmdbApiKey == tmdbApiKey) &&
            (identical(other.devicekKey, devicekKey) ||
                other.devicekKey == devicekKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tmdbApiKey, devicekKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IboInfoDataImplCopyWith<_$IboInfoDataImpl> get copyWith =>
      __$$IboInfoDataImplCopyWithImpl<_$IboInfoDataImpl>(this, _$identity);
}

abstract class _IboInfoData implements IboInfoData {
  factory _IboInfoData(
      {required final String tmdbApiKey,
      required final String devicekKey}) = _$IboInfoDataImpl;

  @override
  String get tmdbApiKey;
  @override
  String get devicekKey;
  @override
  @JsonKey(ignore: true)
  _$$IboInfoDataImplCopyWith<_$IboInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
