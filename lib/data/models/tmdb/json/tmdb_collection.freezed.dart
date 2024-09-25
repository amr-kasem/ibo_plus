// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TmdbCollectionJsonModel _$TmdbCollectionJsonModelFromJson(
    Map<String, dynamic> json) {
  return _TmdbCollectionJsonModel.fromJson(json);
}

/// @nodoc
mixin _$TmdbCollectionJsonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get backdropPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TmdbCollectionJsonModelCopyWith<TmdbCollectionJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TmdbCollectionJsonModelCopyWith<$Res> {
  factory $TmdbCollectionJsonModelCopyWith(TmdbCollectionJsonModel value,
          $Res Function(TmdbCollectionJsonModel) then) =
      _$TmdbCollectionJsonModelCopyWithImpl<$Res, TmdbCollectionJsonModel>;
  @useResult
  $Res call({int id, String name, String posterPath, String backdropPath});
}

/// @nodoc
class _$TmdbCollectionJsonModelCopyWithImpl<$Res,
        $Val extends TmdbCollectionJsonModel>
    implements $TmdbCollectionJsonModelCopyWith<$Res> {
  _$TmdbCollectionJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? posterPath = null,
    Object? backdropPath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TmdbCollectionJsonModelImplCopyWith<$Res>
    implements $TmdbCollectionJsonModelCopyWith<$Res> {
  factory _$$TmdbCollectionJsonModelImplCopyWith(
          _$TmdbCollectionJsonModelImpl value,
          $Res Function(_$TmdbCollectionJsonModelImpl) then) =
      __$$TmdbCollectionJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String posterPath, String backdropPath});
}

/// @nodoc
class __$$TmdbCollectionJsonModelImplCopyWithImpl<$Res>
    extends _$TmdbCollectionJsonModelCopyWithImpl<$Res,
        _$TmdbCollectionJsonModelImpl>
    implements _$$TmdbCollectionJsonModelImplCopyWith<$Res> {
  __$$TmdbCollectionJsonModelImplCopyWithImpl(
      _$TmdbCollectionJsonModelImpl _value,
      $Res Function(_$TmdbCollectionJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? posterPath = null,
    Object? backdropPath = null,
  }) {
    return _then(_$TmdbCollectionJsonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TmdbCollectionJsonModelImpl implements _TmdbCollectionJsonModel {
  const _$TmdbCollectionJsonModelImpl(
      {required this.id,
      required this.name,
      required this.posterPath,
      required this.backdropPath});

  factory _$TmdbCollectionJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TmdbCollectionJsonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String posterPath;
  @override
  final String backdropPath;

  @override
  String toString() {
    return 'TmdbCollectionJsonModel(id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TmdbCollectionJsonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, posterPath, backdropPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TmdbCollectionJsonModelImplCopyWith<_$TmdbCollectionJsonModelImpl>
      get copyWith => __$$TmdbCollectionJsonModelImplCopyWithImpl<
          _$TmdbCollectionJsonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TmdbCollectionJsonModelImplToJson(
      this,
    );
  }
}

abstract class _TmdbCollectionJsonModel implements TmdbCollectionJsonModel {
  const factory _TmdbCollectionJsonModel(
      {required final int id,
      required final String name,
      required final String posterPath,
      required final String backdropPath}) = _$TmdbCollectionJsonModelImpl;

  factory _TmdbCollectionJsonModel.fromJson(Map<String, dynamic> json) =
      _$TmdbCollectionJsonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get posterPath;
  @override
  String get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$$TmdbCollectionJsonModelImplCopyWith<_$TmdbCollectionJsonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
