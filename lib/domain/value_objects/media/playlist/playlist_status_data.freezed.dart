// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_status_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaylistStatusData {
  bool get activeSubscription => throw _privateConstructorUsedError;
  Duration get expirayDuration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistStatusDataCopyWith<PlaylistStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStatusDataCopyWith<$Res> {
  factory $PlaylistStatusDataCopyWith(
          PlaylistStatusData value, $Res Function(PlaylistStatusData) then) =
      _$PlaylistStatusDataCopyWithImpl<$Res, PlaylistStatusData>;
  @useResult
  $Res call({bool activeSubscription, Duration expirayDuration});
}

/// @nodoc
class _$PlaylistStatusDataCopyWithImpl<$Res, $Val extends PlaylistStatusData>
    implements $PlaylistStatusDataCopyWith<$Res> {
  _$PlaylistStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSubscription = null,
    Object? expirayDuration = null,
  }) {
    return _then(_value.copyWith(
      activeSubscription: null == activeSubscription
          ? _value.activeSubscription
          : activeSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      expirayDuration: null == expirayDuration
          ? _value.expirayDuration
          : expirayDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistStatusDataImplCopyWith<$Res>
    implements $PlaylistStatusDataCopyWith<$Res> {
  factory _$$PlaylistStatusDataImplCopyWith(_$PlaylistStatusDataImpl value,
          $Res Function(_$PlaylistStatusDataImpl) then) =
      __$$PlaylistStatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool activeSubscription, Duration expirayDuration});
}

/// @nodoc
class __$$PlaylistStatusDataImplCopyWithImpl<$Res>
    extends _$PlaylistStatusDataCopyWithImpl<$Res, _$PlaylistStatusDataImpl>
    implements _$$PlaylistStatusDataImplCopyWith<$Res> {
  __$$PlaylistStatusDataImplCopyWithImpl(_$PlaylistStatusDataImpl _value,
      $Res Function(_$PlaylistStatusDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSubscription = null,
    Object? expirayDuration = null,
  }) {
    return _then(_$PlaylistStatusDataImpl(
      activeSubscription: null == activeSubscription
          ? _value.activeSubscription
          : activeSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      expirayDuration: null == expirayDuration
          ? _value.expirayDuration
          : expirayDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$PlaylistStatusDataImpl implements _PlaylistStatusData {
  const _$PlaylistStatusDataImpl(
      {required this.activeSubscription, required this.expirayDuration});

  @override
  final bool activeSubscription;
  @override
  final Duration expirayDuration;

  @override
  String toString() {
    return 'PlaylistStatusData(activeSubscription: $activeSubscription, expirayDuration: $expirayDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistStatusDataImpl &&
            (identical(other.activeSubscription, activeSubscription) ||
                other.activeSubscription == activeSubscription) &&
            (identical(other.expirayDuration, expirayDuration) ||
                other.expirayDuration == expirayDuration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, activeSubscription, expirayDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistStatusDataImplCopyWith<_$PlaylistStatusDataImpl> get copyWith =>
      __$$PlaylistStatusDataImplCopyWithImpl<_$PlaylistStatusDataImpl>(
          this, _$identity);
}

abstract class _PlaylistStatusData implements PlaylistStatusData {
  const factory _PlaylistStatusData(
      {required final bool activeSubscription,
      required final Duration expirayDuration}) = _$PlaylistStatusDataImpl;

  @override
  bool get activeSubscription;
  @override
  Duration get expirayDuration;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistStatusDataImplCopyWith<_$PlaylistStatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
