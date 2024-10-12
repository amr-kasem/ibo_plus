import 'dart:async';

import 'package:get_it/get_it.dart';

import '../../domain/entities/playlist/playlist.dart';
import '../../domain/entities/playlist/playlist_status.dart';
import '../../domain/repositories/playlist_repository.dart';
import '../../domain/value_objects/media/playlist/playlist_status_data.dart';
import '../data_sources/iptv_remote/playlist_remote_datasource.dart';
import '../data_sources/isar_local/playlist_datasource.dart';
import '../dtos/ibo/m3u_playlist/m3u_playlist_status.dart';
import '../dtos/isar/playlist/m3u_playlist/m3u_playlist.dart';
import '../mappers/playlist/playlist.dart';
import '../mappers/playlist/playlist_status.dart';

class PlaylistRepositoryImpl implements PlaylistRepository {
  final _locator = GetIt.instance;
  late final _playlistRemoteDatasource =
      _locator.get<PlaylistRemoteDatasource>();
  late final _playlistLocalDatasource = _locator.get<PlaylistLocalDatasource>();
  late final _playlistStatusMapper = _locator.get<PlaylistStatusMapper>();
  late final _playlistMapper = _locator.get<PlaylistMapper>();
  @override
  Future<List<Playlist>> getAllPlaylists() async {
    final playlists = await _playlistLocalDatasource.getPlaylists();
    return playlists
        .map(_playlistMapper.toEntity<M3uPlaylistIsarModel>)
        .toList();
  }

  @override
  Future<void> initializePlaylists(List<Playlist> playlists) async {
    final futures = playlists
        .map(
          (playlist) => Future<Playlist>(
            () async {
              late final PlaylistStatus status;
              try {
                final statusJsonModel =
                    await _playlistRemoteDatasource.initPlaylist(playlist.data);
                status = _playlistStatusMapper
                    .toEntity<M3uPlaylistStatusJsonModel>(statusJsonModel);
              } catch (_) {
                status = PlaylistStatus(
                  data: PlaylistStatusData(
                    activeSubscription: false,
                    expirayDuration: Duration.zero,
                  ),
                );
              } finally {
                playlist.status = status;
              }

              return playlist;
            },
          ),
        )
        .toList();
    final res = await Future.wait(futures);

    final playlistModels = res
        .map(
          (p) => _playlistMapper.toIsarModel(p)
            ..meta.value = _playlistStatusMapper.toIsarModel(p),
        )
        .toList();
    await _playlistLocalDatasource.storePlaylists(playlistModels);
  }
}

//   static Future<void> refreshLiveChannels() async {
//     try {
//       final liveChannels = await PlaylistRemoteDatasource.getLiveChannels(
//         m3uPlaylist: (await UserRepository.selectedPlaylist)!,
//       );
//       IsarDB.instance.storeLiveChannels(liveChannels);
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   static Future<void> refreshMovies() async {
//     try {
//       final movies = await PlaylistRemoteDatasource.getMovies(
//         m3uPlaylist: (await UserRepository.selectedPlaylist)!,
//       );
//       IsarDB.instance.storeMovies(movies);
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   static Future<void> refreshMovieDetails(Movie movie) async {
//     try {
//       final movieDetails = await PlaylistRemoteDatasource.getMovieDetails(
//         m3uPlaylist: (await UserRepository.selectedPlaylist)!,
//         id: movie.streamId,
//       );
//       final tmdbId = int.tryParse('${movieDetails['info']?['tmdb_id']}');
//       if (tmdbId != null) {
//         final tmdbData = await TMDBDatasource.getMovieInfo(tmdbId);
//         log(tmdbData.toString());
//         // TODO: store movie details in movie object
//         // IsarDB.instance.storeMovieDetails(movieDetails);
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   static Future<void> refreshCategories(CategoryType type) async {
//     final categories = await PlaylistRemoteDatasource.getCategories(
//       m3uPlaylist: (await UserRepository.selectedPlaylist)!,
//       categoryType: type,
//     );
//     IsarDB.instance.storeCategories(categories);
//   }

//   static Stream<DataEvent?> get playlistsNotifier =>
//       IsarDB.instance.playlistsNotifier;

//   static Stream<DataEvent?> get liveChannelsNotifier =>
//       IsarDB.instance.liveChannelsNotifier;

//   static Stream<DataEvent?> get liveCategoriesNotifier =>
//       IsarDB.instance.liveCategoriesNotifier;

//   static Future<List<LiveChannel>> getLiveChannels() async {
//     final playlist = await UserRepository.selectedPlaylist;
//     if (playlist == null) {
//       return [];
//     } else {
//       return await IsarDB.instance.getLiveChannels(playlist);
//     }
//   }

//   static Future<List<Movie>> getMovies() async {
//     final playlist = await UserRepository.selectedPlaylist;
//     if (playlist == null) {
//       return [];
//     } else {
//       return await IsarDB.instance.getMovies(playlist);
//     }
//   }

//   static Future<List<Category>> getCategories(CategoryType type) async {
//     final playlist = await UserRepository.selectedPlaylist;
//     if (playlist == null) {
//       return [];
//     } else {
//       return await IsarDB.instance.getCategories(
//         m3uPlaylist: playlist,
//         type: type,
//       );
//     }
//   }

//   static Future<LiveChannel?> getChannelByStreamId(int? streamId) async {
//     final playlist = await UserRepository.selectedPlaylist;
//     if (playlist == null) {
//       return null;
//     } else {
//       return await IsarDB.instance.getLiveChannelByStreamId(playlist, streamId);
//     }
//   }

//   static Future<Category?> getCategoryById(int? id) async {
//     final playlist = await UserRepository.selectedPlaylist;
//     if (playlist == null) {
//       return null;
//     } else {
//       return await IsarDB.instance.getCategoryById(
//         m3uPlaylist: playlist,
//         type: CategoryType.liveChannels,
//         categoryId: id,
//       );
//     }
//   }

//   static void updateChannel(LiveChannel channel) async {
//     IsarDB.instance.updateChannel(channel);
//   }

//   static void updateCategory(Category category) async {
//     IsarDB.instance.updateCategory(category);
//   }

//   static void updateMovie(Movie movie) async {
//     IsarDB.instance.updateMovie(movie);
//   }
// }
