// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LiveState {
  List<LiveChannel> get allChannels => throw _privateConstructorUsedError;
  List<LiveChannel> get channels => throw _privateConstructorUsedError;
  String get searchChannels =>
      throw _privateConstructorUsedError; // LiveChannel? selectedChannel,
// Category? selectedCategory,
// Category? hoverCategory,
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveStateCopyWith<LiveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveStateCopyWith<$Res> {
  factory $LiveStateCopyWith(LiveState value, $Res Function(LiveState) then) =
      _$LiveStateCopyWithImpl<$Res, LiveState>;
  @useResult
  $Res call(
      {List<LiveChannel> allChannels,
      List<LiveChannel> channels,
      String searchChannels,
      Object? error});
}

/// @nodoc
class _$LiveStateCopyWithImpl<$Res, $Val extends LiveState>
    implements $LiveStateCopyWith<$Res> {
  _$LiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allChannels = null,
    Object? channels = null,
    Object? searchChannels = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      allChannels: null == allChannels
          ? _value.allChannels
          : allChannels // ignore: cast_nullable_to_non_nullable
              as List<LiveChannel>,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<LiveChannel>,
      searchChannels: null == searchChannels
          ? _value.searchChannels
          : searchChannels // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveStateImplCopyWith<$Res>
    implements $LiveStateCopyWith<$Res> {
  factory _$$LiveStateImplCopyWith(
          _$LiveStateImpl value, $Res Function(_$LiveStateImpl) then) =
      __$$LiveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LiveChannel> allChannels,
      List<LiveChannel> channels,
      String searchChannels,
      Object? error});
}

/// @nodoc
class __$$LiveStateImplCopyWithImpl<$Res>
    extends _$LiveStateCopyWithImpl<$Res, _$LiveStateImpl>
    implements _$$LiveStateImplCopyWith<$Res> {
  __$$LiveStateImplCopyWithImpl(
      _$LiveStateImpl _value, $Res Function(_$LiveStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allChannels = null,
    Object? channels = null,
    Object? searchChannels = null,
    Object? error = freezed,
  }) {
    return _then(_$LiveStateImpl(
      allChannels: null == allChannels
          ? _value._allChannels
          : allChannels // ignore: cast_nullable_to_non_nullable
              as List<LiveChannel>,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<LiveChannel>,
      searchChannels: null == searchChannels
          ? _value.searchChannels
          : searchChannels // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$LiveStateImpl extends _LiveState {
  const _$LiveStateImpl(
      {final List<LiveChannel> allChannels = const [],
      final List<LiveChannel> channels = const [],
      this.searchChannels = '',
      this.error})
      : _allChannels = allChannels,
        _channels = channels,
        super._();

  final List<LiveChannel> _allChannels;
  @override
  @JsonKey()
  List<LiveChannel> get allChannels {
    if (_allChannels is EqualUnmodifiableListView) return _allChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allChannels);
  }

  final List<LiveChannel> _channels;
  @override
  @JsonKey()
  List<LiveChannel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  @JsonKey()
  final String searchChannels;
// LiveChannel? selectedChannel,
// Category? selectedCategory,
// Category? hoverCategory,
  @override
  final Object? error;

  @override
  String toString() {
    return 'LiveState(allChannels: $allChannels, channels: $channels, searchChannels: $searchChannels, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allChannels, _allChannels) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            (identical(other.searchChannels, searchChannels) ||
                other.searchChannels == searchChannels) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allChannels),
      const DeepCollectionEquality().hash(_channels),
      searchChannels,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveStateImplCopyWith<_$LiveStateImpl> get copyWith =>
      __$$LiveStateImplCopyWithImpl<_$LiveStateImpl>(this, _$identity);
}

abstract class _LiveState extends LiveState {
  const factory _LiveState(
      {final List<LiveChannel> allChannels,
      final List<LiveChannel> channels,
      final String searchChannels,
      final Object? error}) = _$LiveStateImpl;
  const _LiveState._() : super._();

  @override
  List<LiveChannel> get allChannels;
  @override
  List<LiveChannel> get channels;
  @override
  String get searchChannels;
  @override // LiveChannel? selectedChannel,
// Category? selectedCategory,
// Category? hoverCategory,
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$LiveStateImplCopyWith<_$LiveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
