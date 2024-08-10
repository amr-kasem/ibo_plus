import 'package:isar/isar.dart';

part 'data_event.g.dart';

enum DataEventType {
  liveChannelsChange,
  liveCategoriesChange,
  moviesChange,
  seriesChange,
  recentlyVisitedMoviesChange,
  recentlyVisitedSeriesChange,
  playlistsChanged,
  currentChannelChanged,
  currentLiveCategoryChanged,
}

@collection
class DataEvent {
  @enumerated
  final DataEventType dataEventType;
  final DateTime timestamp;
  DataEvent({required this.dataEventType}) : timestamp = DateTime.timestamp();
  Id get isarId => dataEventType.index;
}
