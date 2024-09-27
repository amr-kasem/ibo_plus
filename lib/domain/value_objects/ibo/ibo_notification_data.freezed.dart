// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibo_notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IboNotificationData {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IboNotificationDataCopyWith<IboNotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IboNotificationDataCopyWith<$Res> {
  factory $IboNotificationDataCopyWith(
          IboNotificationData value, $Res Function(IboNotificationData) then) =
      _$IboNotificationDataCopyWithImpl<$Res, IboNotificationData>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$IboNotificationDataCopyWithImpl<$Res, $Val extends IboNotificationData>
    implements $IboNotificationDataCopyWith<$Res> {
  _$IboNotificationDataCopyWithImpl(this._value, this._then);

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
abstract class _$$IboNotificationDataImplCopyWith<$Res>
    implements $IboNotificationDataCopyWith<$Res> {
  factory _$$IboNotificationDataImplCopyWith(_$IboNotificationDataImpl value,
          $Res Function(_$IboNotificationDataImpl) then) =
      __$$IboNotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$IboNotificationDataImplCopyWithImpl<$Res>
    extends _$IboNotificationDataCopyWithImpl<$Res, _$IboNotificationDataImpl>
    implements _$$IboNotificationDataImplCopyWith<$Res> {
  __$$IboNotificationDataImplCopyWithImpl(_$IboNotificationDataImpl _value,
      $Res Function(_$IboNotificationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$IboNotificationDataImpl(
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

class _$IboNotificationDataImpl implements _IboNotificationData {
  _$IboNotificationDataImpl({required this.title, required this.content});

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'IboNotificationData(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IboNotificationDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IboNotificationDataImplCopyWith<_$IboNotificationDataImpl> get copyWith =>
      __$$IboNotificationDataImplCopyWithImpl<_$IboNotificationDataImpl>(
          this, _$identity);
}

abstract class _IboNotificationData implements IboNotificationData {
  factory _IboNotificationData(
      {required final String title,
      required final String content}) = _$IboNotificationDataImpl;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$IboNotificationDataImplCopyWith<_$IboNotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
