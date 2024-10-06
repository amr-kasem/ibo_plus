import '../entities/live_channel/live_channel.dart';
import '../entities/playlist/playlist.dart';

abstract class LiveRepository {
  Future<void> refreshChannels({required Playlist playlist});
  Future<List<LiveChannel>> readChannels({required Playlist playlist});
  Future<void> updateLiveChannel({required LiveChannel liveChannel});
}
