// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ibo_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IboInfoJsonModel _$IboInfoJsonModelFromJson(Map<String, dynamic> json) {
  return _IboInfoJsonModel.fromJson(json);
}

/// @nodoc
mixin _$IboInfoJsonModel {
  @JsonKey(name: 'mac_address')
  String get deviceId => throw _privateConstructorUsedError;
  String get deviceKey => throw _privateConstructorUsedError;
  String get tmdbApiKey => throw _privateConstructorUsedError;
  List<LanguageJsonModel> get languages => throw _privateConstructorUsedError;
  List<IboNotificationJsonModel> get notifications =>
      throw _privateConstructorUsedError;
  UserJsonModel get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'urls')
  List<M3uPlaylistJsonModel> get playlists =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IboInfoJsonModelCopyWith<IboInfoJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IboInfoJsonModelCopyWith<$Res> {
  factory $IboInfoJsonModelCopyWith(
          IboInfoJsonModel value, $Res Function(IboInfoJsonModel) then) =
      _$IboInfoJsonModelCopyWithImpl<$Res, IboInfoJsonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mac_address') String deviceId,
      String deviceKey,
      String tmdbApiKey,
      List<LanguageJsonModel> languages,
      List<IboNotificationJsonModel> notifications,
      UserJsonModel user,
      @JsonKey(name: 'urls') List<M3uPlaylistJsonModel> playlists});

  $UserJsonModelCopyWith<$Res> get user;
}

/// @nodoc
class _$IboInfoJsonModelCopyWithImpl<$Res, $Val extends IboInfoJsonModel>
    implements $IboInfoJsonModelCopyWith<$Res> {
  _$IboInfoJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceKey = null,
    Object? tmdbApiKey = null,
    Object? languages = null,
    Object? notifications = null,
    Object? user = null,
    Object? playlists = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceKey: null == deviceKey
          ? _value.deviceKey
          : deviceKey // ignore: cast_nullable_to_non_nullable
              as String,
      tmdbApiKey: null == tmdbApiKey
          ? _value.tmdbApiKey
          : tmdbApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageJsonModel>,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<IboNotificationJsonModel>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserJsonModel,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<M3uPlaylistJsonModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserJsonModelCopyWith<$Res> get user {
    return $UserJsonModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IboInfoJsonModelImplCopyWith<$Res>
    implements $IboInfoJsonModelCopyWith<$Res> {
  factory _$$IboInfoJsonModelImplCopyWith(_$IboInfoJsonModelImpl value,
          $Res Function(_$IboInfoJsonModelImpl) then) =
      __$$IboInfoJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mac_address') String deviceId,
      String deviceKey,
      String tmdbApiKey,
      List<LanguageJsonModel> languages,
      List<IboNotificationJsonModel> notifications,
      UserJsonModel user,
      @JsonKey(name: 'urls') List<M3uPlaylistJsonModel> playlists});

  @override
  $UserJsonModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$IboInfoJsonModelImplCopyWithImpl<$Res>
    extends _$IboInfoJsonModelCopyWithImpl<$Res, _$IboInfoJsonModelImpl>
    implements _$$IboInfoJsonModelImplCopyWith<$Res> {
  __$$IboInfoJsonModelImplCopyWithImpl(_$IboInfoJsonModelImpl _value,
      $Res Function(_$IboInfoJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceKey = null,
    Object? tmdbApiKey = null,
    Object? languages = null,
    Object? notifications = null,
    Object? user = null,
    Object? playlists = null,
  }) {
    return _then(_$IboInfoJsonModelImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceKey: null == deviceKey
          ? _value.deviceKey
          : deviceKey // ignore: cast_nullable_to_non_nullable
              as String,
      tmdbApiKey: null == tmdbApiKey
          ? _value.tmdbApiKey
          : tmdbApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<LanguageJsonModel>,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<IboNotificationJsonModel>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserJsonModel,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<M3uPlaylistJsonModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$IboInfoJsonModelImpl implements _IboInfoJsonModel {
  _$IboInfoJsonModelImpl(
      {@JsonKey(name: 'mac_address') required this.deviceId,
      required this.deviceKey,
      required this.tmdbApiKey,
      required final List<LanguageJsonModel> languages,
      required final List<IboNotificationJsonModel> notifications,
      required this.user,
      @JsonKey(name: 'urls')
      required final List<M3uPlaylistJsonModel> playlists})
      : _languages = languages,
        _notifications = notifications,
        _playlists = playlists;

  factory _$IboInfoJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IboInfoJsonModelImplFromJson(json);

  @override
  @JsonKey(name: 'mac_address')
  final String deviceId;
  @override
  final String deviceKey;
  @override
  final String tmdbApiKey;
  final List<LanguageJsonModel> _languages;
  @override
  List<LanguageJsonModel> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final List<IboNotificationJsonModel> _notifications;
  @override
  List<IboNotificationJsonModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final UserJsonModel user;
  final List<M3uPlaylistJsonModel> _playlists;
  @override
  @JsonKey(name: 'urls')
  List<M3uPlaylistJsonModel> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  @override
  String toString() {
    return 'IboInfoJsonModel(deviceId: $deviceId, deviceKey: $deviceKey, tmdbApiKey: $tmdbApiKey, languages: $languages, notifications: $notifications, user: $user, playlists: $playlists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IboInfoJsonModelImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceKey, deviceKey) ||
                other.deviceKey == deviceKey) &&
            (identical(other.tmdbApiKey, tmdbApiKey) ||
                other.tmdbApiKey == tmdbApiKey) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceId,
      deviceKey,
      tmdbApiKey,
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_notifications),
      user,
      const DeepCollectionEquality().hash(_playlists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IboInfoJsonModelImplCopyWith<_$IboInfoJsonModelImpl> get copyWith =>
      __$$IboInfoJsonModelImplCopyWithImpl<_$IboInfoJsonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IboInfoJsonModelImplToJson(
      this,
    );
  }
}

abstract class _IboInfoJsonModel implements IboInfoJsonModel {
  factory _IboInfoJsonModel(
          {@JsonKey(name: 'mac_address') required final String deviceId,
          required final String deviceKey,
          required final String tmdbApiKey,
          required final List<LanguageJsonModel> languages,
          required final List<IboNotificationJsonModel> notifications,
          required final UserJsonModel user,
          @JsonKey(name: 'urls')
          required final List<M3uPlaylistJsonModel> playlists}) =
      _$IboInfoJsonModelImpl;

  factory _IboInfoJsonModel.fromJson(Map<String, dynamic> json) =
      _$IboInfoJsonModelImpl.fromJson;

  @override
  @JsonKey(name: 'mac_address')
  String get deviceId;
  @override
  String get deviceKey;
  @override
  String get tmdbApiKey;
  @override
  List<LanguageJsonModel> get languages;
  @override
  List<IboNotificationJsonModel> get notifications;
  @override
  UserJsonModel get user;
  @override
  @JsonKey(name: 'urls')
  List<M3uPlaylistJsonModel> get playlists;
  @override
  @JsonKey(ignore: true)
  _$$IboInfoJsonModelImplCopyWith<_$IboInfoJsonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
