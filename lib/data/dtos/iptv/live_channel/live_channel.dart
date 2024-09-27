import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../serializers/dynamic_to_string.dart';
import '../../../serializers/nullable_int_to_bool.dart';
import 'epg.dart';

part 'live_channel.freezed.dart';
part 'live_channel.g.dart';

@freezed
class LiveChannelJsonModel with _$LiveChannelJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LiveChannelJsonModel({
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
    @DynamicToStringSerializer() String? tvArchiveDuration,
    List<EPGJsonModel>? epgListings,
    @NullableIntToBoolSerializer() required bool isAdult,
  }) = _LiveChannelJsonModel;

  factory LiveChannelJsonModel.fromJson(Map<String, dynamic> json) =>
      _$LiveChannelJsonModelFromJson(json);
}
