// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$M3UPlaylistState {
  M3UPlaylist? get selectedPlaylist => throw _privateConstructorUsedError;
  List<M3UPlaylist> get playlists => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $M3UPlaylistStateCopyWith<M3UPlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $M3UPlaylistStateCopyWith<$Res> {
  factory $M3UPlaylistStateCopyWith(
          M3UPlaylistState value, $Res Function(M3UPlaylistState) then) =
      _$M3UPlaylistStateCopyWithImpl<$Res, M3UPlaylistState>;
  @useResult
  $Res call(
      {M3UPlaylist? selectedPlaylist,
      List<M3UPlaylist> playlists,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$M3UPlaylistStateCopyWithImpl<$Res, $Val extends M3UPlaylistState>
    implements $M3UPlaylistStateCopyWith<$Res> {
  _$M3UPlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPlaylist = freezed,
    Object? playlists = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      selectedPlaylist: freezed == selectedPlaylist
          ? _value.selectedPlaylist
          : selectedPlaylist // ignore: cast_nullable_to_non_nullable
              as M3UPlaylist?,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<M3UPlaylist>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$M3UPlaylistStateImplCopyWith<$Res>
    implements $M3UPlaylistStateCopyWith<$Res> {
  factory _$$M3UPlaylistStateImplCopyWith(_$M3UPlaylistStateImpl value,
          $Res Function(_$M3UPlaylistStateImpl) then) =
      __$$M3UPlaylistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {M3UPlaylist? selectedPlaylist,
      List<M3UPlaylist> playlists,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$M3UPlaylistStateImplCopyWithImpl<$Res>
    extends _$M3UPlaylistStateCopyWithImpl<$Res, _$M3UPlaylistStateImpl>
    implements _$$M3UPlaylistStateImplCopyWith<$Res> {
  __$$M3UPlaylistStateImplCopyWithImpl(_$M3UPlaylistStateImpl _value,
      $Res Function(_$M3UPlaylistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPlaylist = freezed,
    Object? playlists = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$M3UPlaylistStateImpl(
      selectedPlaylist: freezed == selectedPlaylist
          ? _value.selectedPlaylist
          : selectedPlaylist // ignore: cast_nullable_to_non_nullable
              as M3UPlaylist?,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<M3UPlaylist>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$M3UPlaylistStateImpl extends _M3UPlaylistState {
  const _$M3UPlaylistStateImpl(
      {this.selectedPlaylist,
      final List<M3UPlaylist> playlists = const [],
      this.isLoading = false,
      this.error})
      : _playlists = playlists,
        super._();

  @override
  final M3UPlaylist? selectedPlaylist;
  final List<M3UPlaylist> _playlists;
  @override
  @JsonKey()
  List<M3UPlaylist> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'M3UPlaylistState(selectedPlaylist: $selectedPlaylist, playlists: $playlists, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$M3UPlaylistStateImpl &&
            (identical(other.selectedPlaylist, selectedPlaylist) ||
                other.selectedPlaylist == selectedPlaylist) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPlaylist,
      const DeepCollectionEquality().hash(_playlists), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$M3UPlaylistStateImplCopyWith<_$M3UPlaylistStateImpl> get copyWith =>
      __$$M3UPlaylistStateImplCopyWithImpl<_$M3UPlaylistStateImpl>(
          this, _$identity);
}

abstract class _M3UPlaylistState extends M3UPlaylistState {
  const factory _M3UPlaylistState(
      {final M3UPlaylist? selectedPlaylist,
      final List<M3UPlaylist> playlists,
      final bool isLoading,
      final String? error}) = _$M3UPlaylistStateImpl;
  const _M3UPlaylistState._() : super._();

  @override
  M3UPlaylist? get selectedPlaylist;
  @override
  List<M3UPlaylist> get playlists;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$M3UPlaylistStateImplCopyWith<_$M3UPlaylistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
