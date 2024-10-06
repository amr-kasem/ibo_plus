import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_channel_metadata.freezed.dart';

@freezed
class LiveChannelMetaData with _$LiveChannelMetaData {
  const factory LiveChannelMetaData({
    required int index,
    required DateTime lastUpdated,
    required bool favorite,
    required bool locked,
  }) = _LiveChannelMetaData;
}
