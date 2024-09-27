// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibo_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IboNotificationJsonModel _$IboNotificationJsonModelFromJson(
    Map<String, dynamic> json) {
  return _IboNotificationJsonModel.fromJson(json);
}

/// @nodoc
mixin _$IboNotificationJsonModel {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IboNotificationJsonModelCopyWith<IboNotificationJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IboNotificationJsonModelCopyWith<$Res> {
  factory $IboNotificationJsonModelCopyWith(IboNotificationJsonModel value,
          $Res Function(IboNotificationJsonModel) then) =
      _$IboNotificationJsonModelCopyWithImpl<$Res, IboNotificationJsonModel>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$IboNotificationJsonModelCopyWithImpl<$Res,
        $Val extends IboNotificationJsonModel>
    implements $IboNotificationJsonModelCopyWith<$Res> {
  _$IboNotificationJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IboNotificationJsonModelImplCopyWith<$Res>
    implements $IboNotificationJsonModelCopyWith<$Res> {
  factory _$$IboNotificationJsonModelImplCopyWith(
          _$IboNotificationJsonModelImpl value,
          $Res Function(_$IboNotificationJsonModelImpl) then) =
      __$$IboNotificationJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$IboNotificationJsonModelImplCopyWithImpl<$Res>
    extends _$IboNotificationJsonModelCopyWithImpl<$Res,
        _$IboNotificationJsonModelImpl>
    implements _$$IboNotificationJsonModelImplCopyWith<$Res> {
  __$$IboNotificationJsonModelImplCopyWithImpl(
      _$IboNotificationJsonModelImpl _value,
      $Res Function(_$IboNotificationJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$IboNotificationJsonModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$IboNotificationJsonModelImpl implements _IboNotificationJsonModel {
  _$IboNotificationJsonModelImpl({required this.title, required this.content});

  factory _$IboNotificationJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IboNotificationJsonModelImplFromJson(json);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'IboNotificationJsonModel(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IboNotificationJsonModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IboNotificationJsonModelImplCopyWith<_$IboNotificationJsonModelImpl>
      get copyWith => __$$IboNotificationJsonModelImplCopyWithImpl<
          _$IboNotificationJsonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IboNotificationJsonModelImplToJson(
      this,
    );
  }
}

abstract class _IboNotificationJsonModel implements IboNotificationJsonModel {
  factory _IboNotificationJsonModel(
      {required final String title,
      required final String content}) = _$IboNotificationJsonModelImpl;

  factory _IboNotificationJsonModel.fromJson(Map<String, dynamic> json) =
      _$IboNotificationJsonModelImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$IboNotificationJsonModelImplCopyWith<_$IboNotificationJsonModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
