import 'dart:async';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../utils/app_utils.dart';
import '../../utils/category_type.dart';
import '../models/category.dart';
import '../models/data_event.dart';
import '../models/language.dart';
import '../models/live_channel.dart';
import '../models/m3u_playlist.dart';
import '../models/user.dart';

class IsarDB {
  static late final IsarDB instance;
  late final Isar _isar;
  static Future<void> initialize() async {
    instance = IsarDB();
    await instance._init();
  }

  Future<void> _init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [
        UserSchema,
        M3UPlaylistSchema,
        LanguageSchema,
        LiveChannelSchema,
        DataEventSchema,
        CategorySchema,
      ],
      directory: dir.path,
    );
  }

  void updateSettings({
    required FutureOr<User> Function(User userSettings) updateFunction,
    void Function()? callback,
  }) async {
    _isar.writeTxn(
      () async {
        final user = await updateFunction(
          await getSettings(),
        );

        await user.selectedPlaylist.save();
        await _isar.users.put(user);
        callback?.call();
      },
    );
  }

  Future<User> getSettings() async {
    var x = await _isar.users.get(0);
    x ??= User()..id = 0;
    return x;
  }

  User eagerSettings() => _isar.users.getSync(0) ?? User();

  Future<void> notifyCurrentChannel() async {
    await _isar.dataEvents.put(
      DataEvent(dataEventType: DataEventType.currentChannelChanged),
    );
  }

  Future<void> notifyCurrentLiveCategory() async {
    await _isar.dataEvents.put(
      DataEvent(dataEventType: DataEventType.currentLiveCategoryChanged),
    );
  }

  Future<List<M3UPlaylist>> getPlaylists() async =>
      await _isar.m3UPlaylists.where().findAll();

  void storePlaylists(List<M3UPlaylist> m3uPlaylists) async {
    _isar.writeTxn(() async {
      await _isar.m3UPlaylists.putAll(m3uPlaylists);
      await _isar.dataEvents.put(
        DataEvent(dataEventType: DataEventType.playlistsChanged),
      );
    });
  }

  void updatePlaylist(
    M3UPlaylist playlist,
  ) async {
    _isar.writeTxn(
      () async {
        await _isar.m3UPlaylists.put(playlist);
      },
    );
  }

  void storeTranslations(List<Language> languages) =>
      _isar.writeTxn(() async => await _isar.languages.putAll(languages));

  void storeLiveChannels(List<LiveChannel> channels) {
    _isar.writeTxn(() async {
      await _isar.liveChannels.putAll(channels);
      await _isar.dataEvents.put(
        DataEvent(dataEventType: DataEventType.liveChannelsChange),
      );
    });
  }

  void storeLiveCategories(List<Category> categories) {
    _isar.writeTxn(() async {
      await _isar.categorys.putAll(categories);
      await _isar.dataEvents.put(
        DataEvent(dataEventType: DataEventType.liveCategoriesChange),
      );
    });
  }

  Future<Language?> getLanguage(String code) async =>
      _isar.languages.get(AppUtils.fastHash(code));

  Stream<DataEvent?> get liveChannelsNotifier =>
      _isar.dataEvents.watchObject(DataEventType.liveChannelsChange.index);
  Stream<DataEvent?> get currentChannelNotifier =>
      _isar.dataEvents.watchObject(DataEventType.currentChannelChanged.index);
  Stream<DataEvent?> get currentLiveCategoryNotifier => _isar.dataEvents
      .watchObject(DataEventType.currentLiveCategoryChanged.index);
  Stream<DataEvent?> get liveCategoriesNotifier =>
      _isar.dataEvents.watchObject(DataEventType.liveChannelsChange.index);
  Stream<DataEvent?> get moviesNotifier =>
      _isar.dataEvents.watchObject(DataEventType.moviesChange.index);
  Stream<DataEvent?> get seriesNotifier =>
      _isar.dataEvents.watchObject(DataEventType.seriesChange.index);
  Stream<DataEvent?> get playlistsNotifier =>
      _isar.dataEvents.watchObject(DataEventType.playlistsChanged.index);

  Future<List<LiveChannel>> getLiveChannels(M3UPlaylist m3uPlaylist) async {
    return await _isar.liveChannels
        .where()
        .playlistIdEqualTo(m3uPlaylist.isarId)
        .findAll();
  }

  Future<LiveChannel?> getLiveChannelByStreamId(
      M3UPlaylist m3uPlaylist, int? streamId) async {
    if (streamId == null) return await _isar.liveChannels.where().findFirst();
    return await _isar.liveChannels
        .where()
        .streamIdPlaylistIdEqualTo(streamId, m3uPlaylist.isarId)
        .findFirst();
  }

  Future<List<Category>> getCategories({
    required M3UPlaylist m3uPlaylist,
    required CategoryType type,
  }) async {
    return await _isar.categorys
        .where()
        .typePlaylistIdEqualTo(type, m3uPlaylist.isarId)
        .findAll();
  }

  Future<Category?> getCategoryById(
      {required M3UPlaylist m3uPlaylist,
      required CategoryType type,
      required int? categoryId}) async {
    if (categoryId == -1) {
      return Category(categoryId: -1, categoryName: 'Favorite', parentId: 0);
    }
    return (await _isar.categorys
            .where()
            .categoryIdEqualTo(categoryId ?? -2)
            .findAll())
        .firstWhere(
      (c) => c.playlistId == m3uPlaylist.isarId,
      orElse: () => Category(
        categoryId: null,
        categoryName: 'All Channels',
        parentId: 0,
      ),
    );
  }
}
