// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionCountryJsonModel _$ProductionCountryJsonModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCountryJsonModel.fromJson(json);
}

/// @nodoc
mixin _$ProductionCountryJsonModel {
  String get iso31661 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCountryJsonModelCopyWith<ProductionCountryJsonModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCountryJsonModelCopyWith<$Res> {
  factory $ProductionCountryJsonModelCopyWith(ProductionCountryJsonModel value,
          $Res Function(ProductionCountryJsonModel) then) =
      _$ProductionCountryJsonModelCopyWithImpl<$Res,
          ProductionCountryJsonModel>;
  @useResult
  $Res call({String iso31661, String name});
}

/// @nodoc
class _$ProductionCountryJsonModelCopyWithImpl<$Res,
        $Val extends ProductionCountryJsonModel>
    implements $ProductionCountryJsonModelCopyWith<$Res> {
  _$ProductionCountryJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCountryJsonModelImplCopyWith<$Res>
    implements $ProductionCountryJsonModelCopyWith<$Res> {
  factory _$$ProductionCountryJsonModelImplCopyWith(
          _$ProductionCountryJsonModelImpl value,
          $Res Function(_$ProductionCountryJsonModelImpl) then) =
      __$$ProductionCountryJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String iso31661, String name});
}

/// @nodoc
class __$$ProductionCountryJsonModelImplCopyWithImpl<$Res>
    extends _$ProductionCountryJsonModelCopyWithImpl<$Res,
        _$ProductionCountryJsonModelImpl>
    implements _$$ProductionCountryJsonModelImplCopyWith<$Res> {
  __$$ProductionCountryJsonModelImplCopyWithImpl(
      _$ProductionCountryJsonModelImpl _value,
      $Res Function(_$ProductionCountryJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = null,
    Object? name = null,
  }) {
    return _then(_$ProductionCountryJsonModelImpl(
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ProductionCountryJsonModelImpl implements _ProductionCountryJsonModel {
  const _$ProductionCountryJsonModelImpl(
      {required this.iso31661, required this.name});

  factory _$ProductionCountryJsonModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductionCountryJsonModelImplFromJson(json);

  @override
  final String iso31661;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductionCountryJsonModel(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCountryJsonModelImpl &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCountryJsonModelImplCopyWith<_$ProductionCountryJsonModelImpl>
      get copyWith => __$$ProductionCountryJsonModelImplCopyWithImpl<
          _$ProductionCountryJsonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCountryJsonModelImplToJson(
      this,
    );
  }
}

abstract class _ProductionCountryJsonModel
    implements ProductionCountryJsonModel {
  const factory _ProductionCountryJsonModel(
      {required final String iso31661,
      required final String name}) = _$ProductionCountryJsonModelImpl;

  factory _ProductionCountryJsonModel.fromJson(Map<String, dynamic> json) =
      _$ProductionCountryJsonModelImpl.fromJson;

  @override
  String get iso31661;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCountryJsonModelImplCopyWith<_$ProductionCountryJsonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
