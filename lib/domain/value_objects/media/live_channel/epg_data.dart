import 'package:freezed_annotation/freezed_annotation.dart';

part 'epg_data.freezed.dart';
part 'epg_data.g.dart';

@freezed
class EPGData with _$EPGData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EPGData({
    required String id,
    required String epgId,
    required String title,
    required String lang,
    required DateTime start,
    required DateTime end,
    required String description,
    required String channelId,
    required String startTimestamp,
    required String stopTimestamp,
    required int nowPlaying,
    required int hasArchive,
  }) = _EPGData;

  factory EPGData.fromJson(Map<String, dynamic> json) =>
      _$EPGDataFromJson(json);
}
