// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_channel_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LiveChannelData _$LiveChannelDataFromJson(Map<String, dynamic> json) {
  return _LiveChannelData.fromJson(json);
}

/// @nodoc
mixin _$LiveChannelData {
  @JsonKey(name: 'num')
  int? get channelNum => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get streamType => throw _privateConstructorUsedError;
  int get streamId => throw _privateConstructorUsedError;
  String? get streamIcon => throw _privateConstructorUsedError;
  String? get epgChannelId => throw _privateConstructorUsedError;
  String? get added => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get customSid => throw _privateConstructorUsedError;
  int? get tvArchive => throw _privateConstructorUsedError;
  String? get directSource => throw _privateConstructorUsedError;
  List<EPGJsonModel>? get epgListings => throw _privateConstructorUsedError;
  @NullableIntToBoolSerializer()
  bool get isAdult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveChannelDataCopyWith<LiveChannelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveChannelDataCopyWith<$Res> {
  factory $LiveChannelDataCopyWith(
          LiveChannelData value, $Res Function(LiveChannelData) then) =
      _$LiveChannelDataCopyWithImpl<$Res, LiveChannelData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'num') int? channelNum,
      String name,
      String streamType,
      int streamId,
      String? streamIcon,
      String? epgChannelId,
      String? added,
      String? categoryId,
      String? customSid,
      int? tvArchive,
      String? directSource,
      List<EPGJsonModel>? epgListings,
      @NullableIntToBoolSerializer() bool isAdult});
}

/// @nodoc
class _$LiveChannelDataCopyWithImpl<$Res, $Val extends LiveChannelData>
    implements $LiveChannelDataCopyWith<$Res> {
  _$LiveChannelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelNum = freezed,
    Object? name = null,
    Object? streamType = null,
    Object? streamId = null,
    Object? streamIcon = freezed,
    Object? epgChannelId = freezed,
    Object? added = freezed,
    Object? categoryId = freezed,
    Object? customSid = freezed,
    Object? tvArchive = freezed,
    Object? directSource = freezed,
    Object? epgListings = freezed,
    Object? isAdult = null,
  }) {
    return _then(_value.copyWith(
      channelNum: freezed == channelNum
          ? _value.channelNum
          : channelNum // ignore: cast_nullable_to_non_nullable
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
      epgChannelId: freezed == epgChannelId
          ? _value.epgChannelId
          : epgChannelId // ignore: cast_nullable_to_non_nullable
              as String?,
      added: freezed == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customSid: freezed == customSid
          ? _value.customSid
          : customSid // ignore: cast_nullable_to_non_nullable
              as String?,
      tvArchive: freezed == tvArchive
          ? _value.tvArchive
          : tvArchive // ignore: cast_nullable_to_non_nullable
              as int?,
      directSource: freezed == directSource
          ? _value.directSource
          : directSource // ignore: cast_nullable_to_non_nullable
              as String?,
      epgListings: freezed == epgListings
          ? _value.epgListings
          : epgListings // ignore: cast_nullable_to_non_nullable
              as List<EPGJsonModel>?,
      isAdult: null == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveChannelDataImplCopyWith<$Res>
    implements $LiveChannelDataCopyWith<$Res> {
  factory _$$LiveChannelDataImplCopyWith(_$LiveChannelDataImpl value,
          $Res Function(_$LiveChannelDataImpl) then) =
      __$$LiveChannelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'num') int? channelNum,
      String name,
      String streamType,
      int streamId,
      String? streamIcon,
      String? epgChannelId,
      String? added,
      String? categoryId,
      String? customSid,
      int? tvArchive,
      String? directSource,
      List<EPGJsonModel>? epgListings,
      @NullableIntToBoolSerializer() bool isAdult});
}

/// @nodoc
class __$$LiveChannelDataImplCopyWithImpl<$Res>
    extends _$LiveChannelDataCopyWithImpl<$Res, _$LiveChannelDataImpl>
    implements _$$LiveChannelDataImplCopyWith<$Res> {
  __$$LiveChannelDataImplCopyWithImpl(
      _$LiveChannelDataImpl _value, $Res Function(_$LiveChannelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelNum = freezed,
    Object? name = null,
    Object? streamType = null,
    Object? streamId = null,
    Object? streamIcon = freezed,
    Object? epgChannelId = freezed,
    Object? added = freezed,
    Object? categoryId = freezed,
    Object? customSid = freezed,
    Object? tvArchive = freezed,
    Object? directSource = freezed,
    Object? epgListings = freezed,
    Object? isAdult = null,
  }) {
    return _then(_$LiveChannelDataImpl(
      channelNum: freezed == channelNum
          ? _value.channelNum
          : channelNum // ignore: cast_nullable_to_non_nullable
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
      epgChannelId: freezed == epgChannelId
          ? _value.epgChannelId
          : epgChannelId // ignore: cast_nullable_to_non_nullable
              as String?,
      added: freezed == added
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customSid: freezed == customSid
          ? _value.customSid
          : customSid // ignore: cast_nullable_to_non_nullable
              as String?,
      tvArchive: freezed == tvArchive
          ? _value.tvArchive
          : tvArchive // ignore: cast_nullable_to_non_nullable
              as int?,
      directSource: freezed == directSource
          ? _value.directSource
          : directSource // ignore: cast_nullable_to_non_nullable
              as String?,
      epgListings: freezed == epgListings
          ? _value._epgListings
          : epgListings // ignore: cast_nullable_to_non_nullable
              as List<EPGJsonModel>?,
      isAdult: null == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LiveChannelDataImpl implements _LiveChannelData {
  const _$LiveChannelDataImpl(
      {@JsonKey(name: 'num') this.channelNum,
      required this.name,
      required this.streamType,
      required this.streamId,
      this.streamIcon,
      this.epgChannelId,
      this.added,
      this.categoryId,
      this.customSid,
      this.tvArchive,
      this.directSource,
      final List<EPGJsonModel>? epgListings,
      @NullableIntToBoolSerializer() required this.isAdult})
      : _epgListings = epgListings;

  factory _$LiveChannelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiveChannelDataImplFromJson(json);

  @override
  @JsonKey(name: 'num')
  final int? channelNum;
  @override
  final String name;
  @override
  final String streamType;
  @override
  final int streamId;
  @override
  final String? streamIcon;
  @override
  final String? epgChannelId;
  @override
  final String? added;
  @override
  final String? categoryId;
  @override
  final String? customSid;
  @override
  final int? tvArchive;
  @override
  final String? directSource;
  final List<EPGJsonModel>? _epgListings;
  @override
  List<EPGJsonModel>? get epgListings {
    final value = _epgListings;
    if (value == null) return null;
    if (_epgListings is EqualUnmodifiableListView) return _epgListings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @NullableIntToBoolSerializer()
  final bool isAdult;

  @override
  String toString() {
    return 'LiveChannelData(channelNum: $channelNum, name: $name, streamType: $streamType, streamId: $streamId, streamIcon: $streamIcon, epgChannelId: $epgChannelId, added: $added, categoryId: $categoryId, customSid: $customSid, tvArchive: $tvArchive, directSource: $directSource, epgListings: $epgListings, isAdult: $isAdult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveChannelDataImpl &&
            (identical(other.channelNum, channelNum) ||
                other.channelNum == channelNum) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.streamType, streamType) ||
                other.streamType == streamType) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.streamIcon, streamIcon) ||
                other.streamIcon == streamIcon) &&
            (identical(other.epgChannelId, epgChannelId) ||
                other.epgChannelId == epgChannelId) &&
            (identical(other.added, added) || other.added == added) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.customSid, customSid) ||
                other.customSid == customSid) &&
            (identical(other.tvArchive, tvArchive) ||
                other.tvArchive == tvArchive) &&
            (identical(other.directSource, directSource) ||
                other.directSource == directSource) &&
            const DeepCollectionEquality()
                .equals(other._epgListings, _epgListings) &&
            (identical(other.isAdult, isAdult) || other.isAdult == isAdult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      channelNum,
      name,
      streamType,
      streamId,
      streamIcon,
      epgChannelId,
      added,
      categoryId,
      customSid,
      tvArchive,
      directSource,
      const DeepCollectionEquality().hash(_epgListings),
      isAdult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveChannelDataImplCopyWith<_$LiveChannelDataImpl> get copyWith =>
      __$$LiveChannelDataImplCopyWithImpl<_$LiveChannelDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiveChannelDataImplToJson(
      this,
    );
  }
}

abstract class _LiveChannelData implements LiveChannelData {
  const factory _LiveChannelData(
          {@JsonKey(name: 'num') final int? channelNum,
          required final String name,
          required final String streamType,
          required final int streamId,
          final String? streamIcon,
          final String? epgChannelId,
          final String? added,
          final String? categoryId,
          final String? customSid,
          final int? tvArchive,
          final String? directSource,
          final List<EPGJsonModel>? epgListings,
          @NullableIntToBoolSerializer() required final bool isAdult}) =
      _$LiveChannelDataImpl;

  factory _LiveChannelData.fromJson(Map<String, dynamic> json) =
      _$LiveChannelDataImpl.fromJson;

  @override
  @JsonKey(name: 'num')
  int? get channelNum;
  @override
  String get name;
  @override
  String get streamType;
  @override
  int get streamId;
  @override
  String? get streamIcon;
  @override
  String? get epgChannelId;
  @override
  String? get added;
  @override
  String? get categoryId;
  @override
  String? get customSid;
  @override
  int? get tvArchive;
  @override
  String? get directSource;
  @override
  List<EPGJsonModel>? get epgListings;
  @override
  @NullableIntToBoolSerializer()
  bool get isAdult;
  @override
  @JsonKey(ignore: true)
  _$$LiveChannelDataImplCopyWith<_$LiveChannelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
