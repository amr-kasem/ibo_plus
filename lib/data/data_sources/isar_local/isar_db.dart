import 'dart:async';

import 'package:ibo_plus/data/dtos/isar/playlist/category/category_metadata.dart';
import 'package:ibo_plus/data/dtos/isar/playlist/m3u_playlist/m3u_playlist_metadata.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../../shared/exceptions/local_storage_connection_not_initialized.dart';
import '../../dtos/isar/ibo/language/language.dart';
import '../../dtos/isar/ibo/user/user.dart';
import '../../dtos/isar/playlist/category/category.dart';
import '../../dtos/isar/playlist/live_channel/live_channel.dart';
import '../../dtos/isar/playlist/live_channel/live_channel_metadata.dart';
import '../../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import '../../dtos/isar/playlist/movie/movie.dart';
import '../../dtos/isar/settings/settings.dart';

class IsarDB {
  Isar? _isar;
  IsarDB() {
    init();
  }

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [
        UserIsarModelSchema,
        M3uPlaylistIsarModelSchema,
        M3uPlaylistMetadataIsarModelSchema,
        LanguageSchema,
        LiveChannelIsarModelSchema,
        LiveMetadataIsarModelSchema,
        MovieSchema,
        CategoryIsarModelSchema,
        CategoryMetadataIsarModelSchema,
        SettingsIsarModelSchema,
      ],
      directory: dir.path,
    );
  }

  Isar get db {
    if (_isar == null) throw LocalStorageConnectionNotInitialized();
    return _isar!;
  }
}
//   void updateSettings({
//     required FutureOr<User> Function(User userSettings) updateFunction,
//     void Function()? callback,
//   }) async {
//     _isar.writeTxn(
//       () async {
//         final user = await updateFunction(
//           await getSettings(),
//         );

//         await user.selectedPlaylist.save();
//         await _isar.users.put(user);
//         callback?.call();
//       },
//     );
//   }

//   Future<User> getSettings() async {
//     var x = await _isar.users.get(0);
//     x ??= User()..id = 0;
//     return x;
//   }

//   User eagerSettings() => _isar.users.getSync(0) ?? User();

//   Future<void> notifyCurrentChannel() async {
//     await _isar.dataEvents.put(
//       DataEvent(dataEventType: DataEventType.currentChannelChanged),
//     );
//   }

//   Future<void> notifyCurrentLiveCategory() async {
//     await _isar.dataEvents.put(
//       DataEvent(dataEventType: DataEventType.currentLiveCategoryChanged),
//     );
//   }

//   Future<List<M3uPlaylistIsarModel>> getPlaylists() async =>
//       await _isar.m3UPlaylists.where().findAll();

//   void storePlaylists(List<M3uPlaylistIsarModel> m3uPlaylists) async {
//     _isar.writeTxn(() async {
//       await _isar.m3UPlaylists.putAll(m3uPlaylists);
//       await _isar.dataEvents.put(
//         DataEvent(dataEventType: DataEventType.playlistsChanged),
//       );
//     });
//   }

//   void updatePlaylist(
//     M3uPlaylistIsarModel playlist,
//   ) async {
//     _isar.writeTxn(
//       () async {
//         await _isar.m3UPlaylists.put(playlist);
//       },
//     );
//   }

//   void storeTranslations(List<Language> languages) =>
//       _isar.writeTxn(() async => await _isar.languages.putAll(languages));
//   void storeLiveChannels(List<LiveChannel> channels) async {
//     final existingChannels = await _isar.liveChannels.where().findAll();

//     // Step 3: Create a map of existing channels by their ID for quick lookup
//     final Map<int, LiveChannel> existingChannelsMap = {
//       for (var channel in existingChannels) channel.streamId: channel
//     };

//     // Step 4: Merge new data with existing channels
//     final List<LiveChannel> channelsToUpdate = [];

//     for (var newChannel in channels) {
//       final existingChannel = existingChannelsMap[newChannel.streamId];

//       if (existingChannel != null) {
//         // Retain favorite status and check if the other fields differ
//         if (existingChannel != newChannel) {
//           newChannel.isFavorite = existingChannel.isFavorite;
//           channelsToUpdate.add(newChannel);
//         }
//       } else {
//         // No existing channel, so add the new one directly
//         channelsToUpdate.add(newChannel);
//       }
//     }

//     // Step 5: Store the merged channels in the database if there are any changes
//     if (channelsToUpdate.isNotEmpty) {
//       await _isar.writeTxn(() async {
//         await _isar.liveChannels.putAll(channelsToUpdate);
//         await _isar.dataEvents.put(
//           DataEvent(dataEventType: DataEventType.liveChannelsChange),
//         );
//       });
//     }
//   }

//   void storeMovies(List<Movie> movies) async {
//     final existingMoviess = await _isar.movies.where().findAll();

//     // Step 3: Create a map of existing channels by their ID for quick lookup
//     final Map<int, Movie> existingMoviessMap = {
//       for (var movies in existingMoviess) movies.streamId: movies
//     };

//     // Step 4: Merge new data with existing channels
//     final List<Movie> moviesToUpdate = [];

//     for (var newMovie in movies) {
//       final existingMovies = existingMoviessMap[newMovie.streamId];

//       if (existingMovies != null) {
//         // Retain favorite status and check if the other fields differ
//         if (existingMovies != newMovie) {
//           newMovie.isFavorite = existingMovies.isFavorite;
//           moviesToUpdate.add(newMovie);
//         }
//       } else {
//         // No existing channel, so add the new one directly
//         moviesToUpdate.add(newMovie);
//       }
//     }

//     // Step 5: Store the merged channels in the database if there are any changes
//     if (moviesToUpdate.isNotEmpty) {
//       await _isar.writeTxn(() async {
//         await _isar.movies.putAll(moviesToUpdate);
//         await _isar.dataEvents.put(
//           DataEvent(dataEventType: DataEventType.moviesChange),
//         );
//       });
//     }
//   }

//   void storeCategories(List<Category> categories) async {
//     final existingCategories = await _isar.categorys.where().findAll();

//     // Step 3: Create a map of existing categories by their ID for quick lookup
//     final Map<int, Category> existingCategoriesMap = {
//       for (var category in existingCategories) category.categoryId: category
//     };

//     // Step 4: Merge new data with existing categories
//     final List<Category> categoriesToUpdate = [];

//     for (var newCategory in categories) {
//       final existingCategory = existingCategoriesMap[newCategory.categoryId];

//       if (existingCategory != null) {
//         // Retain favorite status and check if the other fields differ
//         if (existingCategory != newCategory) {
//           newCategory.isFavorite = existingCategory.isFavorite;
//           categoriesToUpdate.add(newCategory);
//         }
//       } else {
//         // No existing category, so add the new one directly
//         categoriesToUpdate.add(newCategory);
//       }
//     }

//     // Step 5: Store the merged categories in the database if there are any changes
//     if (categoriesToUpdate.isNotEmpty) {
//       await _isar.writeTxn(() async {
//         await _isar.categorys.putAll(categoriesToUpdate);
//         await _isar.dataEvents.put(
//           DataEvent(dataEventType: DataEventType.liveCategoriesChange),
//         );
//       });
//     }
//   }

//   Future<Language?> getLanguage(String code) async =>
//       _isar.languages.get(AppUtils.fastHash(code));

//   Stream<DataEvent?> get liveChannelsNotifier =>
//       _isar.dataEvents.watchObject(DataEventType.liveChannelsChange.index);
//   Stream<DataEvent?> get currentChannelNotifier =>
//       _isar.dataEvents.watchObject(DataEventType.currentChannelChanged.index);
//   Stream<DataEvent?> get currentLiveCategoryNotifier => _isar.dataEvents
//       .watchObject(DataEventType.currentLiveCategoryChanged.index);
//   Stream<DataEvent?> get liveCategoriesNotifier =>
//       _isar.dataEvents.watchObject(DataEventType.liveChannelsChange.index);
//   Stream<DataEvent?> get moviesNotifier =>
//       _isar.dataEvents.watchObject(DataEventType.moviesChange.index);
//   Stream<DataEvent?> get seriesNotifier =>
//       _isar.dataEvents.watchObject(DataEventType.seriesChange.index);
//   Stream<DataEvent?> get playlistsNotifier =>
//       _isar.dataEvents.watchObject(DataEventType.playlistsChanged.index);

//   Future<List<LiveChannel>> getLiveChannels(M3uPlaylistIsarModel m3uPlaylist) async {
//     return await _isar.liveChannels
//         .where()
//         .playlistIdEqualTo(m3uPlaylist.isarId)
//         .findAll();
//   }

//   Future<LiveChannel?> getLiveChannelByStreamId(
//       M3uPlaylistIsarModel m3uPlaylist, int? streamId) async {
//     if (streamId == null) return await _isar.liveChannels.where().findFirst();
//     return await _isar.liveChannels
//         .where()
//         .streamIdPlaylistIdEqualTo(streamId, m3uPlaylist.isarId)
//         .findFirst();
//   }

//   Future<List<Movie>> getMovies(M3uPlaylistIsarModel m3uPlaylist) async {
//     return await _isar.movies
//         .where()
//         .playlistIdEqualTo(m3uPlaylist.isarId)
//         .findAll();
//   }

//   // Future<LiveChannel?> getLiveChannelByStreamId(
//   //     M3uPlaylistIsarModel m3uPlaylist, int? streamId) async {
//   //   if (streamId == null) return await _isar.liveChannels.where().findFirst();
//   //   return await _isar.liveChannels
//   //       .where()
//   //       .streamIdPlaylistIdEqualTo(streamId, m3uPlaylist.isarId)
//   //       .findFirst();
//   // }

//   Future<List<Category>> getCategories({
//     required M3uPlaylistIsarModel m3uPlaylist,
//     required CategoryType type,
//   }) async {
//     return [
//       Category(
//         categoryId: -2,
//         categoryName: 'All Channels',
//         parentId: 0,
//         isFavorite: true,
//       )..playlistId = m3uPlaylist.isarId,
//       Category(
//         categoryId: -1,
//         categoryName: 'Favorite',
//         parentId: 0,
//         isFavorite: true,
//       )..playlistId = m3uPlaylist.isarId,
//       ...await _isar.categorys
//           .where()
//           .playlistIdTypeEqualTo(m3uPlaylist.isarId, type)
//           .findAll()
//     ];
//   }

//   Future<Category?> getCategoryById(
//       {required M3uPlaylistIsarModel m3uPlaylist,
//       required CategoryType type,
//       required int? categoryId}) async {
//     if (categoryId == -1) {
//       return Category(
//         categoryId: -1,
//         categoryName: 'Favorite',
//         parentId: 0,
//         isFavorite: true,
//       )..playlistId = m3uPlaylist.isarId;
//     }
//     return (await _isar.categorys
//             .where()
//             .isarIdEqualTo(
//                 AppUtils.fastHash('${m3uPlaylist.isarId}$categoryId'))
//             .findAll())
//         .firstWhere(
//       (c) => c.playlistId == m3uPlaylist.isarId,
//       orElse: () => Category(
//         categoryId: -2,
//         categoryName: 'All Channels',
//         parentId: 0,
//         isFavorite: true,
//       )..playlistId = m3uPlaylist.isarId,
//     );
//   }

//   void updateChannel(LiveChannel channel) {
//     _isar.writeTxn(
//       () async {
//         _isar.liveChannels.put(channel);
//       },
//     );
//   }

//   void updateMovie(Movie movie) {
//     _isar.writeTxn(
//       () async {
//         _isar.movies.put(movie);
//       },
//     );
//   }

//   void updateCategory(Category category) {
//     _isar.writeTxn(
//       () async {
//         _isar.categorys.put(category);
//       },
//     );
//   }

