import 'package:isar/isar.dart';

part 'epg.g.dart';

@embedded
class EPG {
  late String id;
  late String epgId;
  late String title;
  late String lang;
  late DateTime start;
  late DateTime end;
  late String description;
  late String channelId;
  late String startTimestamp;
  late String stopTimestamp;
  late int nowPlaying;
  late int hasArchive;

  EPG();
}
