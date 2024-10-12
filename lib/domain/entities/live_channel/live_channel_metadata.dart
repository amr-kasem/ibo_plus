import '../../value_objects/media/live_channel/live_channel_metadata.dart';

class LiveChannelMeta {
  LiveChannelMetaData data;
  LiveChannelMeta({required this.data});
  void toggleFavorite() {
    data = data.copyWith(favorite: !data.favorite);
  }
}
