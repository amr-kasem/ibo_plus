// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieJsonModel _$MovieJsonModelFromJson(Map<String, dynamic> json) {
  return _MovieJsonModel.fromJson(json);
}

/// @nodoc
mixin _$MovieJsonModel {
  @JsonKey(name: 'num')
  int? get movieNum => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get streamType => throw _privateConstructorUsedError;
  int get streamId => throw _privateConstructorUsedError;
  String? get streamIcon => throw _privateConstructorUsedError;
  @StringToNullableDoubleSerializer()
  double? get rating => throw _privateConstructorUsedError;
  double? get rating5Based => throw _privateConstructorUsedError;
  String? get added => throw _privateConstructorUsedError;
  @StringToNullableIntSerializer()
  int? get categoryId => throw _privateConstructorUsedError;
  String? get containerExtension => throw _privateConstructorUsedError;
  @StringToNullableIntSerializer()
  int? get customSid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieJsonModelCopyWith<MovieJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieJsonModelCopyWith<$Res> {
  factory $MovieJsonModelCopyWith(
          MovieJsonModel value, $Res Function(MovieJsonModel) then) =
      _$MovieJsonModelCopyWithImpl<$Res, MovieJsonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'num') int? movieNum,
      String name,
      String streamType,
      int streamId,
      String? streamIcon,
      @StringToNullableDoubleSerializer() double? rating,
      double? rating5Based,
      String? added,
      @StringToNullableIntSerializer() int? categoryId,
      String? containerExtension,
      @StringToNullableIntSerializer() int? customSid});
}

/// @nodoc
class _$MovieJsonModelCopyWithImpl<$Res, $Val extends MovieJsonModel>
    implements $MovieJsonModelCopyWith<$Res> {
  _$MovieJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieNum = freezed,
    Object? name = null,
    Object? streamType = null,
    Object? streamId = null,
    Object? streamIcon = freezed,
    Object? rating = freezed,
    Object? rating5Based = freezed,
    Object? added = freezed,
    Object? categoryId = freezed,
    Object? containerExtension = freezed,
    Object? customSid = freezed,
  }) {
    return _then(_value.copyWith(
      movieNum: freezed == movieNum
          ? _value.movieNum
          : movieNum // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      streamType: null == streamType
          ? _value.streamType
          : streamType // ignore: cast_nullable_to_non_nullable
              as String,
      streamId: null == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
      streamIcon: freezed == streamIcon
          ? _value.streamIcon
          : streamIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      rating5Based: freezed == rating5Based
          ? _value.rating5Based
          : rating5Based // ignore: cast_nullable_to_non_nullable
              as double?,
      added: freezed == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      containerExtension: freezed == containerExtension
          ? _value.containerExtension
          : containerExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      customSid: freezed == customSid
          ? _value.customSid
          : customSid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieJsonModelImplCopyWith<$Res>
    implements $MovieJsonModelCopyWith<$Res> {
  factory _$$MovieJsonModelImplCopyWith(_$MovieJsonModelImpl value,
          $Res Function(_$MovieJsonModelImpl) then) =
      __$$MovieJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'num') int? movieNum,
      String name,
      String streamType,
      int streamId,
      String? streamIcon,
      @StringToNullableDoubleSerializer() double? rating,
      double? rating5Based,
      String? added,
      @StringToNullableIntSerializer() int? categoryId,
      String? containerExtension,
      @StringToNullableIntSerializer() int? customSid});
}

/// @nodoc
class __$$MovieJsonModelImplCopyWithImpl<$Res>
    extends _$MovieJsonModelCopyWithImpl<$Res, _$MovieJsonModelImpl>
    implements _$$MovieJsonModelImplCopyWith<$Res> {
  __$$MovieJsonModelImplCopyWithImpl(
      _$MovieJsonModelImpl _value, $Res Function(_$MovieJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieNum = freezed,
    Object? name = null,
    Object? streamType = null,
    Object? streamId = null,
    Object? streamIcon = freezed,
    Object? rating = freezed,
    Object? rating5Based = freezed,
    Object? added = freezed,
    Object? categoryId = freezed,
    Object? containerExtension = freezed,
    Object? customSid = freezed,
  }) {
    return _then(_$MovieJsonModelImpl(
      movieNum: freezed == movieNum
          ? _value.movieNum
          : movieNum // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      streamType: null == streamType
          ? _value.streamType
          : streamType // ignore: cast_nullable_to_non_nullable
              as String,
      streamId: null == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int,
      streamIcon: freezed == streamIcon
          ? _value.streamIcon
          : streamIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      rating5Based: freezed == rating5Based
          ? _value.rating5Based
          : rating5Based // ignore: cast_nullable_to_non_nullable
              as double?,
      added: freezed == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      containerExtension: freezed == containerExtension
          ? _value.containerExtension
          : containerExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      customSid: freezed == customSid
          ? _value.customSid
          : customSid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MovieJsonModelImpl implements _MovieJsonModel {
  const _$MovieJsonModelImpl(
      {@JsonKey(name: 'num') this.movieNum,
      required this.name,
      required this.streamType,
      required this.streamId,
      this.streamIcon,
      @StringToNullableDoubleSerializer() this.rating,
      this.rating5Based,
      this.added,
      @StringToNullableIntSerializer() this.categoryId,
      this.containerExtension = "mp4",
      @StringToNullableIntSerializer() this.customSid});

  factory _$MovieJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieJsonModelImplFromJson(json);

  @override
  @JsonKey(name: 'num')
  final int? movieNum;
  @override
  final String name;
  @override
  final String streamType;
  @override
  final int streamId;
  @override
  final String? streamIcon;
  @override
  @StringToNullableDoubleSerializer()
  final double? rating;
  @override
  final double? rating5Based;
  @override
  final String? added;
  @override
  @StringToNullableIntSerializer()
  final int? categoryId;
  @override
  @JsonKey()
  final String? containerExtension;
  @override
  @StringToNullableIntSerializer()
  final int? customSid;

  @override
  String toString() {
    return 'MovieJsonModel(movieNum: $movieNum, name: $name, streamType: $streamType, streamId: $streamId, streamIcon: $streamIcon, rating: $rating, rating5Based: $rating5Based, added: $added, categoryId: $categoryId, containerExtension: $containerExtension, customSid: $customSid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieJsonModelImpl &&
            (identical(other.movieNum, movieNum) ||
                other.movieNum == movieNum) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.streamType, streamType) ||
                other.streamType == streamType) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.streamIcon, streamIcon) ||
                other.streamIcon == streamIcon) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.rating5Based, rating5Based) ||
                other.rating5Based == rating5Based) &&
            (identical(other.added, added) || other.added == added) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.containerExtension, containerExtension) ||
                other.containerExtension == containerExtension) &&
            (identical(other.customSid, customSid) ||
                other.customSid == customSid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      movieNum,
      name,
      streamType,
      streamId,
      streamIcon,
      rating,
      rating5Based,
      added,
      categoryId,
      containerExtension,
      customSid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieJsonModelImplCopyWith<_$MovieJsonModelImpl> get copyWith =>
      __$$MovieJsonModelImplCopyWithImpl<_$MovieJsonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieJsonModelImplToJson(
      this,
    );
  }
}

abstract class _MovieJsonModel implements MovieJsonModel {
  const factory _MovieJsonModel(
          {@JsonKey(name: 'num') final int? movieNum,
          required final String name,
          required final String streamType,
          required final int streamId,
          final String? streamIcon,
          @StringToNullableDoubleSerializer() final double? rating,
          final double? rating5Based,
          final String? added,
          @StringToNullableIntSerializer() final int? categoryId,
          final String? containerExtension,
          @StringToNullableIntSerializer() final int? customSid}) =
      _$MovieJsonModelImpl;

  factory _MovieJsonModel.fromJson(Map<String, dynamic> json) =
      _$MovieJsonModelImpl.fromJson;

  @override
  @JsonKey(name: 'num')
  int? get movieNum;
  @override
  String get name;
  @override
  String get streamType;
  @override
  int get streamId;
  @override
  String? get streamIcon;
  @override
  @StringToNullableDoubleSerializer()
  double? get rating;
  @override
  double? get rating5Based;
  @override
  String? get added;
  @override
  @StringToNullableIntSerializer()
  int? get categoryId;
  @override
  String? get containerExtension;
  @override
  @StringToNullableIntSerializer()
  int? get customSid;
  @override
  @JsonKey(ignore: true)
  _$$MovieJsonModelImplCopyWith<_$MovieJsonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
