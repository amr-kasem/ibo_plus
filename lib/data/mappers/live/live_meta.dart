import '../../../domain/entities/live_channel/live_channel.dart';
import '../../../domain/entities/live_channel/live_channel_metadata.dart';
import '../../../domain/value_objects/media/live_channel/live_channel_metadata.dart';
import '../../dtos/isar/playlist/live_channel/live_channel_metadata.dart';

class LiveMetaMapper {
  LiveMetadataIsarModel toIsar(LiveChannel liveChannel) {
    return LiveMetadataIsarModel(
      index: liveChannel.meta!.data.index,
      lastUpdated: liveChannel.meta!.data.lastUpdated,
      favorite: liveChannel.meta?.data.favorite ?? false,
      locked: liveChannel.meta?.data.locked ?? false,
    );
  }

  LiveChannelMeta toEntity(LiveMetadataIsarModel model) {
    return LiveChannelMeta(
      data: LiveChannelMetaData(
        index: model.index,
        lastUpdated: model.lastUpdated,
        favorite: model.favorite,
        locked: model.locked,
      ),
    );
  }
}
