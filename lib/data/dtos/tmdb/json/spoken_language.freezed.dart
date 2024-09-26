// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spoken_language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpokenLanguageJsonModel _$SpokenLanguageJsonModelFromJson(
    Map<String, dynamic> json) {
  return _SpokenLanguageJsonModel.fromJson(json);
}

/// @nodoc
mixin _$SpokenLanguageJsonModel {
  String get englishName => throw _privateConstructorUsedError;
  String get iso6391 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpokenLanguageJsonModelCopyWith<SpokenLanguageJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpokenLanguageJsonModelCopyWith<$Res> {
  factory $SpokenLanguageJsonModelCopyWith(SpokenLanguageJsonModel value,
          $Res Function(SpokenLanguageJsonModel) then) =
      _$SpokenLanguageJsonModelCopyWithImpl<$Res, SpokenLanguageJsonModel>;
  @useResult
  $Res call({String englishName, String iso6391, String name});
}

/// @nodoc
class _$SpokenLanguageJsonModelCopyWithImpl<$Res,
        $Val extends SpokenLanguageJsonModel>
    implements $SpokenLanguageJsonModelCopyWith<$Res> {
  _$SpokenLanguageJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? iso6391 = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      iso6391: null == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpokenLanguageJsonModelImplCopyWith<$Res>
    implements $SpokenLanguageJsonModelCopyWith<$Res> {
  factory _$$SpokenLanguageJsonModelImplCopyWith(
          _$SpokenLanguageJsonModelImpl value,
          $Res Function(_$SpokenLanguageJsonModelImpl) then) =
      __$$SpokenLanguageJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String englishName, String iso6391, String name});
}

/// @nodoc
class __$$SpokenLanguageJsonModelImplCopyWithImpl<$Res>
    extends _$SpokenLanguageJsonModelCopyWithImpl<$Res,
        _$SpokenLanguageJsonModelImpl>
    implements _$$SpokenLanguageJsonModelImplCopyWith<$Res> {
  __$$SpokenLanguageJsonModelImplCopyWithImpl(
      _$SpokenLanguageJsonModelImpl _value,
      $Res Function(_$SpokenLanguageJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? iso6391 = null,
    Object? name = null,
  }) {
    return _then(_$SpokenLanguageJsonModelImpl(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      iso6391: null == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
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
class _$SpokenLanguageJsonModelImpl implements _SpokenLanguageJsonModel {
  const _$SpokenLanguageJsonModelImpl(
      {required this.englishName, required this.iso6391, required this.name});

  factory _$SpokenLanguageJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpokenLanguageJsonModelImplFromJson(json);

  @override
  final String englishName;
  @override
  final String iso6391;
  @override
  final String name;

  @override
  String toString() {
    return 'SpokenLanguageJsonModel(englishName: $englishName, iso6391: $iso6391, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpokenLanguageJsonModelImpl &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, englishName, iso6391, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpokenLanguageJsonModelImplCopyWith<_$SpokenLanguageJsonModelImpl>
      get copyWith => __$$SpokenLanguageJsonModelImplCopyWithImpl<
          _$SpokenLanguageJsonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpokenLanguageJsonModelImplToJson(
      this,
    );
  }
}

abstract class _SpokenLanguageJsonModel implements SpokenLanguageJsonModel {
  const factory _SpokenLanguageJsonModel(
      {required final String englishName,
      required final String iso6391,
      required final String name}) = _$SpokenLanguageJsonModelImpl;

  factory _SpokenLanguageJsonModel.fromJson(Map<String, dynamic> json) =
      _$SpokenLanguageJsonModelImpl.fromJson;

  @override
  String get englishName;
  @override
  String get iso6391;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SpokenLanguageJsonModelImplCopyWith<_$SpokenLanguageJsonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
