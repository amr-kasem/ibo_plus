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
mixin _$PlaylistState {
  Playlist? get selectedPlaylist => throw _privateConstructorUsedError;
  List<Playlist> get playlists => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistStateCopyWith<PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateCopyWith<$Res> {
  factory $PlaylistStateCopyWith(
          PlaylistState value, $Res Function(PlaylistState) then) =
      _$PlaylistStateCopyWithImpl<$Res, PlaylistState>;
  @useResult
  $Res call(
      {Playlist? selectedPlaylist,
      List<Playlist> playlists,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res, $Val extends PlaylistState>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._value, this._then);

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
              as Playlist?,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
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
abstract class _$$PlaylistStateImplCopyWith<$Res>
    implements $PlaylistStateCopyWith<$Res> {
  factory _$$PlaylistStateImplCopyWith(
          _$PlaylistStateImpl value, $Res Function(_$PlaylistStateImpl) then) =
      __$$PlaylistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Playlist? selectedPlaylist,
      List<Playlist> playlists,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$PlaylistStateImplCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$PlaylistStateImpl>
    implements _$$PlaylistStateImplCopyWith<$Res> {
  __$$PlaylistStateImplCopyWithImpl(
      _$PlaylistStateImpl _value, $Res Function(_$PlaylistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPlaylist = freezed,
    Object? playlists = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$PlaylistStateImpl(
      selectedPlaylist: freezed == selectedPlaylist
          ? _value.selectedPlaylist
          : selectedPlaylist // ignore: cast_nullable_to_non_nullable
              as Playlist?,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
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

class _$PlaylistStateImpl extends _PlaylistState {
  const _$PlaylistStateImpl(
      {this.selectedPlaylist,
      final List<Playlist> playlists = const [],
      this.isLoading = false,
      this.error})
      : _playlists = playlists,
        super._();

  @override
  final Playlist? selectedPlaylist;
  final List<Playlist> _playlists;
  @override
  @JsonKey()
  List<Playlist> get playlists {
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
    return 'PlaylistState(selectedPlaylist: $selectedPlaylist, playlists: $playlists, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistStateImpl &&
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
  _$$PlaylistStateImplCopyWith<_$PlaylistStateImpl> get copyWith =>
      __$$PlaylistStateImplCopyWithImpl<_$PlaylistStateImpl>(this, _$identity);
}

abstract class _PlaylistState extends PlaylistState {
  const factory _PlaylistState(
      {final Playlist? selectedPlaylist,
      final List<Playlist> playlists,
      final bool isLoading,
      final String? error}) = _$PlaylistStateImpl;
  const _PlaylistState._() : super._();

  @override
  Playlist? get selectedPlaylist;
  @override
  List<Playlist> get playlists;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistStateImplCopyWith<_$PlaylistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
