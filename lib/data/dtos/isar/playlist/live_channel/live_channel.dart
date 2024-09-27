import 'package:get_it/get_it.dart';
import 'package:ibo_plus/data/helpers/isar_helper.dart';
import 'package:isar/isar.dart';

import 'epg.dart';

part 'live_channel.g.dart';

@collection
class LiveChannel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();

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
  final String? tvArchiveDuration;

  final List<EPG>? epgListings;

  final bool? isAdult;

  bool isFavorite;
  @Index()
  late int playlistId;

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

  Id get isarId => _isarHelper.fastHash('$playlistId$streamId');
  @override
  int get hashCode => isarId;

  @override
  bool operator ==(Object other) {
    if (other is! LiveChannel) return false;
    return hashCode == other.hashCode;
  }
}
