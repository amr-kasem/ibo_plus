// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_channel_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LiveChannelMetaData {
  int get index => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveChannelMetaDataCopyWith<LiveChannelMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveChannelMetaDataCopyWith<$Res> {
  factory $LiveChannelMetaDataCopyWith(
          LiveChannelMetaData value, $Res Function(LiveChannelMetaData) then) =
      _$LiveChannelMetaDataCopyWithImpl<$Res, LiveChannelMetaData>;
  @useResult
  $Res call({int index, DateTime lastUpdated, bool favorite, bool locked});
}

/// @nodoc
class _$LiveChannelMetaDataCopyWithImpl<$Res, $Val extends LiveChannelMetaData>
    implements $LiveChannelMetaDataCopyWith<$Res> {
  _$LiveChannelMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? lastUpdated = null,
    Object? favorite = null,
    Object? locked = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveChannelMetaDataImplCopyWith<$Res>
    implements $LiveChannelMetaDataCopyWith<$Res> {
  factory _$$LiveChannelMetaDataImplCopyWith(_$LiveChannelMetaDataImpl value,
          $Res Function(_$LiveChannelMetaDataImpl) then) =
      __$$LiveChannelMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, DateTime lastUpdated, bool favorite, bool locked});
}

/// @nodoc
class __$$LiveChannelMetaDataImplCopyWithImpl<$Res>
    extends _$LiveChannelMetaDataCopyWithImpl<$Res, _$LiveChannelMetaDataImpl>
    implements _$$LiveChannelMetaDataImplCopyWith<$Res> {
  __$$LiveChannelMetaDataImplCopyWithImpl(_$LiveChannelMetaDataImpl _value,
      $Res Function(_$LiveChannelMetaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? lastUpdated = null,
    Object? favorite = null,
    Object? locked = null,
  }) {
    return _then(_$LiveChannelMetaDataImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LiveChannelMetaDataImpl implements _LiveChannelMetaData {
  const _$LiveChannelMetaDataImpl(
      {required this.index,
      required this.lastUpdated,
      required this.favorite,
      required this.locked});

  @override
  final int index;
  @override
  final DateTime lastUpdated;
  @override
  final bool favorite;
  @override
  final bool locked;

  @override
  String toString() {
    return 'LiveChannelMetaData(index: $index, lastUpdated: $lastUpdated, favorite: $favorite, locked: $locked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveChannelMetaDataImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.locked, locked) || other.locked == locked));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, lastUpdated, favorite, locked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveChannelMetaDataImplCopyWith<_$LiveChannelMetaDataImpl> get copyWith =>
      __$$LiveChannelMetaDataImplCopyWithImpl<_$LiveChannelMetaDataImpl>(
          this, _$identity);
}

abstract class _LiveChannelMetaData implements LiveChannelMetaData {
  const factory _LiveChannelMetaData(
      {required final int index,
      required final DateTime lastUpdated,
      required final bool favorite,
      required final bool locked}) = _$LiveChannelMetaDataImpl;

  @override
  int get index;
  @override
  DateTime get lastUpdated;
  @override
  bool get favorite;
  @override
  bool get locked;
  @override
  @JsonKey(ignore: true)
  _$$LiveChannelMetaDataImplCopyWith<_$LiveChannelMetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
