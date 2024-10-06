import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_channel_data.freezed.dart';

@freezed
class LiveChannelData with _$LiveChannelData {
  const factory LiveChannelData({
    int? channelNum,
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
    required bool isAdult,
  }) = _LiveChannelData;
}
