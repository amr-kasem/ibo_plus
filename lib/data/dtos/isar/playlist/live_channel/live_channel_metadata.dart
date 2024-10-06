import 'package:isar/isar.dart';

import 'live_channel.dart';

part 'live_channel_metadata.g.dart';

@collection
class LiveMetadataIsarModel {
  Id? id;
  final int index;
  final DateTime lastUpdated;
  bool favorite;
  bool locked;

  final channel = IsarLink<LiveChannelIsarModel>();

  LiveMetadataIsarModel({
    required this.index,
    required this.lastUpdated,
    this.favorite = false,
    this.locked = false,
  });

  @override
  bool operator ==(Object other) {
    if (other is! LiveMetadataIsarModel) return false;
    return hashCode == other.hashCode;
  }

  @override
  int get hashCode => id.hashCode;
}
