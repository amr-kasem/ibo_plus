// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryMetadata {
  int get index => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;
  CategoryType get type => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryMetadataCopyWith<CategoryMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryMetadataCopyWith<$Res> {
  factory $CategoryMetadataCopyWith(
          CategoryMetadata value, $Res Function(CategoryMetadata) then) =
      _$CategoryMetadataCopyWithImpl<$Res, CategoryMetadata>;
  @useResult
  $Res call(
      {int index,
      DateTime lastUpdated,
      bool favorite,
      bool locked,
      CategoryType type,
      int categoryId,
      String categoryName});
}

/// @nodoc
class _$CategoryMetadataCopyWithImpl<$Res, $Val extends CategoryMetadata>
    implements $CategoryMetadataCopyWith<$Res> {
  _$CategoryMetadataCopyWithImpl(this._value, this._then);

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
    Object? type = null,
    Object? categoryId = null,
    Object? categoryName = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryMetadataImplCopyWith<$Res>
    implements $CategoryMetadataCopyWith<$Res> {
  factory _$$CategoryMetadataImplCopyWith(_$CategoryMetadataImpl value,
          $Res Function(_$CategoryMetadataImpl) then) =
      __$$CategoryMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      DateTime lastUpdated,
      bool favorite,
      bool locked,
      CategoryType type,
      int categoryId,
      String categoryName});
}

/// @nodoc
class __$$CategoryMetadataImplCopyWithImpl<$Res>
    extends _$CategoryMetadataCopyWithImpl<$Res, _$CategoryMetadataImpl>
    implements _$$CategoryMetadataImplCopyWith<$Res> {
  __$$CategoryMetadataImplCopyWithImpl(_$CategoryMetadataImpl _value,
      $Res Function(_$CategoryMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? lastUpdated = null,
    Object? favorite = null,
    Object? locked = null,
    Object? type = null,
    Object? categoryId = null,
    Object? categoryName = null,
  }) {
    return _then(_$CategoryMetadataImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryMetadataImpl implements _CategoryMetadata {
  const _$CategoryMetadataImpl(
      {required this.index,
      required this.lastUpdated,
      required this.favorite,
      required this.locked,
      required this.type,
      required this.categoryId,
      required this.categoryName});

  @override
  final int index;
  @override
  final DateTime lastUpdated;
  @override
  final bool favorite;
  @override
  final bool locked;
  @override
  final CategoryType type;
  @override
  final int categoryId;
  @override
  final String categoryName;

  @override
  String toString() {
    return 'CategoryMetadata(index: $index, lastUpdated: $lastUpdated, favorite: $favorite, locked: $locked, type: $type, categoryId: $categoryId, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryMetadataImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, lastUpdated, favorite,
      locked, type, categoryId, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryMetadataImplCopyWith<_$CategoryMetadataImpl> get copyWith =>
      __$$CategoryMetadataImplCopyWithImpl<_$CategoryMetadataImpl>(
          this, _$identity);
}

abstract class _CategoryMetadata implements CategoryMetadata {
  const factory _CategoryMetadata(
      {required final int index,
      required final DateTime lastUpdated,
      required final bool favorite,
      required final bool locked,
      required final CategoryType type,
      required final int categoryId,
      required final String categoryName}) = _$CategoryMetadataImpl;

  @override
  int get index;
  @override
  DateTime get lastUpdated;
  @override
  bool get favorite;
  @override
  bool get locked;
  @override
  CategoryType get type;
  @override
  int get categoryId;
  @override
  String get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$CategoryMetadataImplCopyWith<_$CategoryMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
