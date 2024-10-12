import '../../value_objects/media/live_channel/live_channel_data.dart';
import '../category/category.dart';
import '../item.dart';
import 'live_channel_metadata.dart';

class LiveChannel implements Item {
  LiveChannelData data;
  LiveChannelMeta? meta;
  LiveChannel({
    required this.data,
    this.meta,
  });
  @override
  bool get isFavorite => meta?.data.favorite ?? false;

  @override
  bool matches(String search) =>
      data.name.toLowerCase().contains(search.toLowerCase());

  @override
  bool belongsTo(Category? category) =>
      int.tryParse(data.categoryId ?? '') == category?.data?.categoryId;

  void toggleFavorite() {
    meta?.toggleFavorite();
  }
}
