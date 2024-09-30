import '../../shared/types/category_type.dart';

class PlaylistApiHelper {
  static const Map<CategoryType, String> _types = {
    CategoryType.liveChannels: 'get_live_categories',
    CategoryType.movies: 'get_vod_categories',
    CategoryType.series: 'get_series_categories',
  };
  String getAction(CategoryType category) => _types[category]!;
}
