import '../../value_objects/media/live_channel/live_channel_data.dart';
import 'live_channel_metadata.dart';

class LiveChannel {
  LiveChannelData data;
  LiveChannelMeta? meta;
  LiveChannel({
    required this.data,
    this.meta,
  });
}
