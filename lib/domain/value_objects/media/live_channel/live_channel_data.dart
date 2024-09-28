import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/dtos/iptv/live_channel/epg.dart';
import '../../../../data/serializers/nullable_int_to_bool.dart';

part 'live_channel_data.freezed.dart';
part 'live_channel_data.g.dart';

@freezed
class LiveChannelData with _$LiveChannelData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LiveChannelData({
    @JsonKey(name: 'num') int? channelNum,
    required String name,
    required String streamType,
    required int streamId,
    String? streamIcon,
    String? epgChannelId,
    String? added,
    String? categoryId,
    String? customSid,
    int? tvArchive,
    String? directSource,
    List<EPGJsonModel>? epgListings,
    @NullableIntToBoolSerializer() required bool isAdult,
  }) = _LiveChannelData;

  factory LiveChannelData.fromJson(Map<String, dynamic> json) =>
      _$LiveChannelDataFromJson(json);
}
