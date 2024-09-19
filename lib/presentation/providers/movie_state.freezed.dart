// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieState {
  List<Movie> get allMovies => throw _privateConstructorUsedError;
  String get searchMovies => throw _privateConstructorUsedError;
  List<Category> get allCategoris => throw _privateConstructorUsedError;
  String get searchCategories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  bool get notify => throw _privateConstructorUsedError;
  bool get onlyFavoriteCategories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
  @useResult
  $Res call(
      {List<Movie> allMovies,
      String searchMovies,
      List<Category> allCategoris,
      String searchCategories,
      bool isLoading,
      Object? error,
      bool notify,
      bool onlyFavoriteCategories});
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMovies = null,
    Object? searchMovies = null,
    Object? allCategoris = null,
    Object? searchCategories = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? notify = null,
    Object? onlyFavoriteCategories = null,
  }) {
    return _then(_value.copyWith(
      allMovies: null == allMovies
          ? _value.allMovies
          : allMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      searchMovies: null == searchMovies
          ? _value.searchMovies
          : searchMovies // ignore: cast_nullable_to_non_nullable
              as String,
      allCategoris: null == allCategoris
          ? _value.allCategoris
          : allCategoris // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      searchCategories: null == searchCategories
          ? _value.searchCategories
          : searchCategories // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      notify: null == notify
          ? _value.notify
          : notify // ignore: cast_nullable_to_non_nullable
              as bool,
      onlyFavoriteCategories: null == onlyFavoriteCategories
          ? _value.onlyFavoriteCategories
          : onlyFavoriteCategories // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieStateImplCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$MovieStateImplCopyWith(
          _$MovieStateImpl value, $Res Function(_$MovieStateImpl) then) =
      __$$MovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Movie> allMovies,
      String searchMovies,
      List<Category> allCategoris,
      String searchCategories,
      bool isLoading,
      Object? error,
      bool notify,
      bool onlyFavoriteCategories});
}

/// @nodoc
class __$$MovieStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateImpl>
    implements _$$MovieStateImplCopyWith<$Res> {
  __$$MovieStateImplCopyWithImpl(
      _$MovieStateImpl _value, $Res Function(_$MovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMovies = null,
    Object? searchMovies = null,
    Object? allCategoris = null,
    Object? searchCategories = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? notify = null,
    Object? onlyFavoriteCategories = null,
  }) {
    return _then(_$MovieStateImpl(
      allMovies: null == allMovies
          ? _value._allMovies
          : allMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      searchMovies: null == searchMovies
          ? _value.searchMovies
          : searchMovies // ignore: cast_nullable_to_non_nullable
              as String,
      allCategoris: null == allCategoris
          ? _value._allCategoris
          : allCategoris // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      searchCategories: null == searchCategories
          ? _value.searchCategories
          : searchCategories // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      notify: null == notify
          ? _value.notify
          : notify // ignore: cast_nullable_to_non_nullable
              as bool,
      onlyFavoriteCategories: null == onlyFavoriteCategories
          ? _value.onlyFavoriteCategories
          : onlyFavoriteCategories // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MovieStateImpl extends _MovieState {
  const _$MovieStateImpl(
      {final List<Movie> allMovies = const [],
      this.searchMovies = '',
      final List<Category> allCategoris = const [],
      this.searchCategories = '',
      this.isLoading = false,
      this.error,
      this.notify = false,
      this.onlyFavoriteCategories = false})
      : _allMovies = allMovies,
        _allCategoris = allCategoris,
        super._();

  final List<Movie> _allMovies;
  @override
  @JsonKey()
  List<Movie> get allMovies {
    if (_allMovies is EqualUnmodifiableListView) return _allMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMovies);
  }

  @override
  @JsonKey()
  final String searchMovies;
  final List<Category> _allCategoris;
  @override
  @JsonKey()
  List<Category> get allCategoris {
    if (_allCategoris is EqualUnmodifiableListView) return _allCategoris;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCategoris);
  }

  @override
  @JsonKey()
  final String searchCategories;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Object? error;
  @override
  @JsonKey()
  final bool notify;
  @override
  @JsonKey()
  final bool onlyFavoriteCategories;

  @override
  String toString() {
    return 'MovieState(allMovies: $allMovies, searchMovies: $searchMovies, allCategoris: $allCategoris, searchCategories: $searchCategories, isLoading: $isLoading, error: $error, notify: $notify, onlyFavoriteCategories: $onlyFavoriteCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allMovies, _allMovies) &&
            (identical(other.searchMovies, searchMovies) ||
                other.searchMovies == searchMovies) &&
            const DeepCollectionEquality()
                .equals(other._allCategoris, _allCategoris) &&
            (identical(other.searchCategories, searchCategories) ||
                other.searchCategories == searchCategories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.notify, notify) || other.notify == notify) &&
            (identical(other.onlyFavoriteCategories, onlyFavoriteCategories) ||
                other.onlyFavoriteCategories == onlyFavoriteCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allMovies),
      searchMovies,
      const DeepCollectionEquality().hash(_allCategoris),
      searchCategories,
      isLoading,
      const DeepCollectionEquality().hash(error),
      notify,
      onlyFavoriteCategories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      __$$MovieStateImplCopyWithImpl<_$MovieStateImpl>(this, _$identity);
}

abstract class _MovieState extends MovieState {
  const factory _MovieState(
      {final List<Movie> allMovies,
      final String searchMovies,
      final List<Category> allCategoris,
      final String searchCategories,
      final bool isLoading,
      final Object? error,
      final bool notify,
      final bool onlyFavoriteCategories}) = _$MovieStateImpl;
  const _MovieState._() : super._();

  @override
  List<Movie> get allMovies;
  @override
  String get searchMovies;
  @override
  List<Category> get allCategoris;
  @override
  String get searchCategories;
  @override
  bool get isLoading;
  @override
  Object? get error;
  @override
  bool get notify;
  @override
  bool get onlyFavoriteCategories;
  @override
  @JsonKey(ignore: true)
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
