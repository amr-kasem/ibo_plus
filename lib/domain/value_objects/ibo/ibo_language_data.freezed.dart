// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibo_language_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IboLanguageData {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, String> get words => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IboLanguageDataCopyWith<IboLanguageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IboLanguageDataCopyWith<$Res> {
  factory $IboLanguageDataCopyWith(
          IboLanguageData value, $Res Function(IboLanguageData) then) =
      _$IboLanguageDataCopyWithImpl<$Res, IboLanguageData>;
  @useResult
  $Res call({String code, String name, Map<String, String> words});
}

/// @nodoc
class _$IboLanguageDataCopyWithImpl<$Res, $Val extends IboLanguageData>
    implements $IboLanguageDataCopyWith<$Res> {
  _$IboLanguageDataCopyWithImpl(this._value, this._then);

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
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IboLanguageDataImplCopyWith<$Res>
    implements $IboLanguageDataCopyWith<$Res> {
  factory _$$IboLanguageDataImplCopyWith(_$IboLanguageDataImpl value,
          $Res Function(_$IboLanguageDataImpl) then) =
      __$$IboLanguageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, Map<String, String> words});
}

/// @nodoc
class __$$IboLanguageDataImplCopyWithImpl<$Res>
    extends _$IboLanguageDataCopyWithImpl<$Res, _$IboLanguageDataImpl>
    implements _$$IboLanguageDataImplCopyWith<$Res> {
  __$$IboLanguageDataImplCopyWithImpl(
      _$IboLanguageDataImpl _value, $Res Function(_$IboLanguageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? words = null,
  }) {
    return _then(_$IboLanguageDataImpl(
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
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$IboLanguageDataImpl implements _IboLanguageData {
  _$IboLanguageDataImpl(
      {required this.code,
      required this.name,
      required final Map<String, String> words})
      : _words = words;

  @override
  final String code;
  @override
  final String name;
  final Map<String, String> _words;
  @override
  Map<String, String> get words {
    if (_words is EqualUnmodifiableMapView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_words);
  }

  @override
  String toString() {
    return 'IboLanguageData(code: $code, name: $name, words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IboLanguageDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IboLanguageDataImplCopyWith<_$IboLanguageDataImpl> get copyWith =>
      __$$IboLanguageDataImplCopyWithImpl<_$IboLanguageDataImpl>(
          this, _$identity);
}

abstract class _IboLanguageData implements IboLanguageData {
  factory _IboLanguageData(
      {required final String code,
      required final String name,
      required final Map<String, String> words}) = _$IboLanguageDataImpl;

  @override
  String get code;
  @override
  String get name;
  @override
  Map<String, String> get words;
  @override
  @JsonKey(ignore: true)
  _$$IboLanguageDataImplCopyWith<_$IboLanguageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
