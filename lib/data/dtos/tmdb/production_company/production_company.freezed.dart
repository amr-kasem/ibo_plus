// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionCompanyJsonModel _$ProductionCompanyJsonModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCompanyJsonModel.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompanyJsonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get originCountry => throw _privateConstructorUsedError;
  String get logoPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompanyJsonModelCopyWith<ProductionCompanyJsonModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyJsonModelCopyWith<$Res> {
  factory $ProductionCompanyJsonModelCopyWith(ProductionCompanyJsonModel value,
          $Res Function(ProductionCompanyJsonModel) then) =
      _$ProductionCompanyJsonModelCopyWithImpl<$Res,
          ProductionCompanyJsonModel>;
  @useResult
  $Res call({int id, String name, String originCountry, String logoPath});
}

/// @nodoc
class _$ProductionCompanyJsonModelCopyWithImpl<$Res,
        $Val extends ProductionCompanyJsonModel>
    implements $ProductionCompanyJsonModelCopyWith<$Res> {
  _$ProductionCompanyJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originCountry = null,
    Object? logoPath = null,
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
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: null == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompanyJsonModelImplCopyWith<$Res>
    implements $ProductionCompanyJsonModelCopyWith<$Res> {
  factory _$$ProductionCompanyJsonModelImplCopyWith(
          _$ProductionCompanyJsonModelImpl value,
          $Res Function(_$ProductionCompanyJsonModelImpl) then) =
      __$$ProductionCompanyJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String originCountry, String logoPath});
}

/// @nodoc
class __$$ProductionCompanyJsonModelImplCopyWithImpl<$Res>
    extends _$ProductionCompanyJsonModelCopyWithImpl<$Res,
        _$ProductionCompanyJsonModelImpl>
    implements _$$ProductionCompanyJsonModelImplCopyWith<$Res> {
  __$$ProductionCompanyJsonModelImplCopyWithImpl(
      _$ProductionCompanyJsonModelImpl _value,
      $Res Function(_$ProductionCompanyJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originCountry = null,
    Object? logoPath = null,
  }) {
    return _then(_$ProductionCompanyJsonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: null == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ProductionCompanyJsonModelImpl implements _ProductionCompanyJsonModel {
  const _$ProductionCompanyJsonModelImpl(
      {required this.id,
      required this.name,
      required this.originCountry,
      required this.logoPath});

  factory _$ProductionCompanyJsonModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductionCompanyJsonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String originCountry;
  @override
  final String logoPath;

  @override
  String toString() {
    return 'ProductionCompanyJsonModel(id: $id, name: $name, originCountry: $originCountry, logoPath: $logoPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompanyJsonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, originCountry, logoPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompanyJsonModelImplCopyWith<_$ProductionCompanyJsonModelImpl>
      get copyWith => __$$ProductionCompanyJsonModelImplCopyWithImpl<
          _$ProductionCompanyJsonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompanyJsonModelImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompanyJsonModel
    implements ProductionCompanyJsonModel {
  const factory _ProductionCompanyJsonModel(
      {required final int id,
      required final String name,
      required final String originCountry,
      required final String logoPath}) = _$ProductionCompanyJsonModelImpl;

  factory _ProductionCompanyJsonModel.fromJson(Map<String, dynamic> json) =
      _$ProductionCompanyJsonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get originCountry;
  @override
  String get logoPath;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCompanyJsonModelImplCopyWith<_$ProductionCompanyJsonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
