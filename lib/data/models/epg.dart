import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'epg.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@embedded
class EPG {
  late final String id;
  late final String epgId;
  late final String title;
  late final String lang;
  late final DateTime start;
  late final DateTime end;
  late final String description;
  late final String channelId;
  late final String startTimestamp;
  late final String stopTimestamp;
  late final int nowPlaying;
  late final int hasArchive;

  factory EPG.fromJson(Map<String, dynamic> json) => _$EPGFromJson(json);

  EPG();
}
