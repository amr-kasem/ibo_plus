import 'package:isar/isar.dart';

part 'live_channel_metadata.g.dart';

@collection
class LiveMetadataIsarModel {
  final Id channel;
  final int index;
  final DateTime lastUpdated;
  bool favorite;
  bool locked;
  LiveMetadataIsarModel({
    required this.channel,
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
  int get hashCode => channel.hashCode;
}
