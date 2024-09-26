import 'package:freezed_annotation/freezed_annotation.dart';

part 'epg.freezed.dart';
part 'epg.g.dart';

@freezed
class EPGJsonModel with _$EPGJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EPGJsonModel({
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
  }) = _EPGJsonModel;

  factory EPGJsonModel.fromJson(Map<String, dynamic> json) =>
      _$EPGJsonModelFromJson(json);
}
