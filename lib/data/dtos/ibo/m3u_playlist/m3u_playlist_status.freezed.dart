// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm3u_playlist_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

M3uPlaylistStatusJsonModel _$M3uPlaylistStatusJsonModelFromJson(
    Map<String, dynamic> json) {
  return _M3uPlaylistStatusJsonModel.fromJson(json);
}

/// @nodoc
mixin _$M3uPlaylistStatusJsonModel {
  bool get activeSubscription => throw _privateConstructorUsedError;
  Duration get expirayDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $M3uPlaylistStatusJsonModelCopyWith<M3uPlaylistStatusJsonModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $M3uPlaylistStatusJsonModelCopyWith<$Res> {
  factory $M3uPlaylistStatusJsonModelCopyWith(M3uPlaylistStatusJsonModel value,
          $Res Function(M3uPlaylistStatusJsonModel) then) =
      _$M3uPlaylistStatusJsonModelCopyWithImpl<$Res,
          M3uPlaylistStatusJsonModel>;
  @useResult
  $Res call({bool activeSubscription, Duration expirayDuration});
}

/// @nodoc
class _$M3uPlaylistStatusJsonModelCopyWithImpl<$Res,
        $Val extends M3uPlaylistStatusJsonModel>
    implements $M3uPlaylistStatusJsonModelCopyWith<$Res> {
  _$M3uPlaylistStatusJsonModelCopyWithImpl(this._value, this._then);

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
abstract class _$$M3uPlaylistStatusJsonModelImplCopyWith<$Res>
    implements $M3uPlaylistStatusJsonModelCopyWith<$Res> {
  factory _$$M3uPlaylistStatusJsonModelImplCopyWith(
          _$M3uPlaylistStatusJsonModelImpl value,
          $Res Function(_$M3uPlaylistStatusJsonModelImpl) then) =
      __$$M3uPlaylistStatusJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool activeSubscription, Duration expirayDuration});
}

/// @nodoc
class __$$M3uPlaylistStatusJsonModelImplCopyWithImpl<$Res>
    extends _$M3uPlaylistStatusJsonModelCopyWithImpl<$Res,
        _$M3uPlaylistStatusJsonModelImpl>
    implements _$$M3uPlaylistStatusJsonModelImplCopyWith<$Res> {
  __$$M3uPlaylistStatusJsonModelImplCopyWithImpl(
      _$M3uPlaylistStatusJsonModelImpl _value,
      $Res Function(_$M3uPlaylistStatusJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSubscription = null,
    Object? expirayDuration = null,
  }) {
    return _then(_$M3uPlaylistStatusJsonModelImpl(
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

@JsonSerializable(fieldRename: FieldRename.snake)
class _$M3uPlaylistStatusJsonModelImpl implements _M3uPlaylistStatusJsonModel {
  const _$M3uPlaylistStatusJsonModelImpl(
      {required this.activeSubscription, required this.expirayDuration});

  factory _$M3uPlaylistStatusJsonModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$M3uPlaylistStatusJsonModelImplFromJson(json);

  @override
  final bool activeSubscription;
  @override
  final Duration expirayDuration;

  @override
  String toString() {
    return 'M3uPlaylistStatusJsonModel(activeSubscription: $activeSubscription, expirayDuration: $expirayDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$M3uPlaylistStatusJsonModelImpl &&
            (identical(other.activeSubscription, activeSubscription) ||
                other.activeSubscription == activeSubscription) &&
            (identical(other.expirayDuration, expirayDuration) ||
                other.expirayDuration == expirayDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, activeSubscription, expirayDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$M3uPlaylistStatusJsonModelImplCopyWith<_$M3uPlaylistStatusJsonModelImpl>
      get copyWith => __$$M3uPlaylistStatusJsonModelImplCopyWithImpl<
          _$M3uPlaylistStatusJsonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$M3uPlaylistStatusJsonModelImplToJson(
      this,
    );
  }
}

abstract class _M3uPlaylistStatusJsonModel
    implements M3uPlaylistStatusJsonModel {
  const factory _M3uPlaylistStatusJsonModel(
          {required final bool activeSubscription,
          required final Duration expirayDuration}) =
      _$M3uPlaylistStatusJsonModelImpl;

  factory _M3uPlaylistStatusJsonModel.fromJson(Map<String, dynamic> json) =
      _$M3uPlaylistStatusJsonModelImpl.fromJson;

  @override
  bool get activeSubscription;
  @override
  Duration get expirayDuration;
  @override
  @JsonKey(ignore: true)
  _$$M3uPlaylistStatusJsonModelImplCopyWith<_$M3uPlaylistStatusJsonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
