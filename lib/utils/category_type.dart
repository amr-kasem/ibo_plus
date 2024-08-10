enum CategoryType {
  liveChannels,
  movies,
  series,
}

extension ExtendedCategoryType on CategoryType {
  static const Map<CategoryType, String> _types = {
    CategoryType.liveChannels: 'get_live_categories',
    CategoryType.movies: 'get_vod_categories',
    CategoryType.series: 'get_series_categories',
  };
  String get action => _types[this]!;
}
