import '../data/models/category.dart';
import '../data/models/live_channel.dart';
import '../data/repositories/playlist_repository.dart';
import '../data/repositories/user_repository.dart';
import '../presentation/providers/live_state.dart';
import '../utils/app_utils.dart';
import '../utils/category_type.dart';

class LiveServices {
  static Future<void> initialize() async {
    PlaylistRepository.refreshCategories(CategoryType.liveChannels);
    PlaylistRepository.refreshLiveChannels();
    PlaylistRepository.liveChannelsNotifier.listen((e) {
      AppUtils.providerContainer.invalidate(LiveState.liveChannels);
    });
    UserRepository.currentChannelNotifier.listen((e) {
      AppUtils.providerContainer.invalidate(LiveState.currentChannel);
    });
  }

  static void changeCurrentChannel(LiveChannel channel) async {
    UserRepository.setCurrentChannelIndex(channel.streamId);
  }

  static Future<LiveChannel?> getSelectedChannel() async {
    return PlaylistRepository.getChannelByStreamId(
      await UserRepository.currentChannelIndex,
    );
  }

  static void refreshChannels() {
    PlaylistRepository.refreshLiveChannels();
  }

  static Future<List<LiveChannel>> getLiveChannels() async {
    return await PlaylistRepository.getLiveChannels();
  }

  static void refreshCategories() {
    PlaylistRepository.refreshCategories(CategoryType.liveChannels);
  }

  static Future<List<Category>> getLiveCategories() async {
    return await PlaylistRepository.getCategories(CategoryType.liveChannels);
  }
}
