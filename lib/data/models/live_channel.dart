import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utils/app_utils.dart';
import 'epg.dart';

part 'live_channel.g.dart';

@collection
@JsonSerializable(fieldRename: FieldRename.snake)
class LiveChannel {
  @JsonKey(name: 'num')
  final int? channelNum;
  final String name;
  final String streamType;
  @Index(composite: [CompositeIndex('playlistId')])
  final int streamId;
  final String? streamIcon;
  final String? epgChannelId;
  final String? added;
  final String? categoryId;
  final String? customSid;
  final int? tvArchive;
  final String? directSource;
  @JsonKey(fromJson: AppUtils.toStr)
  final String? tvArchiveDuration;

  final List<EPG>? epgListings;
  @JsonKey(
      fromJson: AppUtils.intToNullableBool, toJson: AppUtils.boolToNullableInt)
  final bool? isAdult;

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isFavorite;
  @Index()
  @JsonKey(includeFromJson: false, includeToJson: false)
  late int playlistId;

  factory LiveChannel.fromJson(Map<String, dynamic> json) =>
      _$LiveChannelFromJson(json);

  LiveChannel({
    required this.channelNum,
    required this.name,
    required this.streamId,
    required this.streamType,
    required this.streamIcon,
    required this.epgChannelId,
    required this.added,
    required this.categoryId,
    required this.customSid,
    required this.tvArchive,
    required this.directSource,
    required this.tvArchiveDuration,
    required this.epgListings,
    required this.isAdult,
    this.isFavorite = false,
  });

  Id get isarId => AppUtils.fastHash('$playlistId$streamId');
}
