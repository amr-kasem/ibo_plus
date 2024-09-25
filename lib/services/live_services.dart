import '../data/models/ibo/category/category.dart';
import '../data/models/ibo/isar/live_channel.dart';
import '../data/repositories/playlist_repository.dart';
import '../data/repositories/user_repository.dart';
import '../utils/category_type.dart';

class LiveServices {
  static Future<void> initialize() async {
    PlaylistRepository.refreshCategories(CategoryType.liveChannels);
    PlaylistRepository.refreshLiveChannels();
  }

  static void changeCurrentChannel(LiveChannel channel) async {
    UserRepository.setCurrentChannelIndex(channel.streamId);
  }

  static void changeCurrentCategoryById(int? category) async {
    UserRepository.setCurrentCategory(category);
  }

  static Future<LiveChannel?> getSelectedChannel() async {
    return PlaylistRepository.getChannelByStreamId(
      await UserRepository.currentChannelIndex,
    );
  }

  static Future<Category?> getSelectedCategory() async {
    return PlaylistRepository.getCategoryById(
      await UserRepository.currentCategoryId,
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

  static void toggleFavoriteChannel(LiveChannel channel) {
    channel.isFavorite = !channel.isFavorite;
    PlaylistRepository.updateChannel(channel);
  }

  static void toggleFavoriteCategory(Category category) {
    category.isFavorite = !category.isFavorite;
    PlaylistRepository.updateCategory(category);
  }
}
