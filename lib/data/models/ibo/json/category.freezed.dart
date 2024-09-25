// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryJsonModel _$CategoryJsonModelFromJson(Map<String, dynamic> json) {
  return _CategoryJsonModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryJsonModel {
  @StringToIntConverter()
  int get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  int get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryJsonModelCopyWith<CategoryJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryJsonModelCopyWith<$Res> {
  factory $CategoryJsonModelCopyWith(
          CategoryJsonModel value, $Res Function(CategoryJsonModel) then) =
      _$CategoryJsonModelCopyWithImpl<$Res, CategoryJsonModel>;
  @useResult
  $Res call(
      {@StringToIntConverter() int categoryId,
      String categoryName,
      int parentId});
}

/// @nodoc
class _$CategoryJsonModelCopyWithImpl<$Res, $Val extends CategoryJsonModel>
    implements $CategoryJsonModelCopyWith<$Res> {
  _$CategoryJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? parentId = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryJsonModelImplCopyWith<$Res>
    implements $CategoryJsonModelCopyWith<$Res> {
  factory _$$CategoryJsonModelImplCopyWith(_$CategoryJsonModelImpl value,
          $Res Function(_$CategoryJsonModelImpl) then) =
      __$$CategoryJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringToIntConverter() int categoryId,
      String categoryName,
      int parentId});
}

/// @nodoc
class __$$CategoryJsonModelImplCopyWithImpl<$Res>
    extends _$CategoryJsonModelCopyWithImpl<$Res, _$CategoryJsonModelImpl>
    implements _$$CategoryJsonModelImplCopyWith<$Res> {
  __$$CategoryJsonModelImplCopyWithImpl(_$CategoryJsonModelImpl _value,
      $Res Function(_$CategoryJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? parentId = null,
  }) {
    return _then(_$CategoryJsonModelImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CategoryJsonModelImpl implements _CategoryJsonModel {
  const _$CategoryJsonModelImpl(
      {@StringToIntConverter() required this.categoryId,
      required this.categoryName,
      required this.parentId});

  factory _$CategoryJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryJsonModelImplFromJson(json);

  @override
  @StringToIntConverter()
  final int categoryId;
  @override
  final String categoryName;
  @override
  final int parentId;

  @override
  String toString() {
    return 'CategoryJsonModel(categoryId: $categoryId, categoryName: $categoryName, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryJsonModelImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryId, categoryName, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryJsonModelImplCopyWith<_$CategoryJsonModelImpl> get copyWith =>
      __$$CategoryJsonModelImplCopyWithImpl<_$CategoryJsonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryJsonModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryJsonModel implements CategoryJsonModel {
  const factory _CategoryJsonModel(
      {@StringToIntConverter() required final int categoryId,
      required final String categoryName,
      required final int parentId}) = _$CategoryJsonModelImpl;

  factory _CategoryJsonModel.fromJson(Map<String, dynamic> json) =
      _$CategoryJsonModelImpl.fromJson;

  @override
  @StringToIntConverter()
  int get categoryId;
  @override
  String get categoryName;
  @override
  int get parentId;
  @override
  @JsonKey(ignore: true)
  _$$CategoryJsonModelImplCopyWith<_$CategoryJsonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
