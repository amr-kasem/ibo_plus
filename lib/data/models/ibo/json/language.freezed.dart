// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LanguageJsonModel _$LanguageJsonModelFromJson(Map<String, dynamic> json) {
  return _LanguageJsonModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageJsonModel {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, dynamic> get words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageJsonModelCopyWith<LanguageJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageJsonModelCopyWith<$Res> {
  factory $LanguageJsonModelCopyWith(
          LanguageJsonModel value, $Res Function(LanguageJsonModel) then) =
      _$LanguageJsonModelCopyWithImpl<$Res, LanguageJsonModel>;
  @useResult
  $Res call({String code, String name, Map<String, dynamic> words});
}

/// @nodoc
class _$LanguageJsonModelCopyWithImpl<$Res, $Val extends LanguageJsonModel>
    implements $LanguageJsonModelCopyWith<$Res> {
  _$LanguageJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageJsonModelImplCopyWith<$Res>
    implements $LanguageJsonModelCopyWith<$Res> {
  factory _$$LanguageJsonModelImplCopyWith(_$LanguageJsonModelImpl value,
          $Res Function(_$LanguageJsonModelImpl) then) =
      __$$LanguageJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, Map<String, dynamic> words});
}

/// @nodoc
class __$$LanguageJsonModelImplCopyWithImpl<$Res>
    extends _$LanguageJsonModelCopyWithImpl<$Res, _$LanguageJsonModelImpl>
    implements _$$LanguageJsonModelImplCopyWith<$Res> {
  __$$LanguageJsonModelImplCopyWithImpl(_$LanguageJsonModelImpl _value,
      $Res Function(_$LanguageJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? words = null,
  }) {
    return _then(_$LanguageJsonModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LanguageJsonModelImpl implements _LanguageJsonModel {
  const _$LanguageJsonModelImpl(
      {required this.code,
      required this.name,
      required final Map<String, dynamic> words})
      : _words = words;

  factory _$LanguageJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageJsonModelImplFromJson(json);

  @override
  final String code;
  @override
  final String name;
  final Map<String, dynamic> _words;
  @override
  Map<String, dynamic> get words {
    if (_words is EqualUnmodifiableMapView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_words);
  }

  @override
  String toString() {
    return 'LanguageJsonModel(code: $code, name: $name, words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageJsonModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageJsonModelImplCopyWith<_$LanguageJsonModelImpl> get copyWith =>
      __$$LanguageJsonModelImplCopyWithImpl<_$LanguageJsonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageJsonModelImplToJson(
      this,
    );
  }
}

abstract class _LanguageJsonModel implements LanguageJsonModel {
  const factory _LanguageJsonModel(
      {required final String code,
      required final String name,
      required final Map<String, dynamic> words}) = _$LanguageJsonModelImpl;

  factory _LanguageJsonModel.fromJson(Map<String, dynamic> json) =
      _$LanguageJsonModelImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  Map<String, dynamic> get words;
  @override
  @JsonKey(ignore: true)
  _$$LanguageJsonModelImplCopyWith<_$LanguageJsonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
