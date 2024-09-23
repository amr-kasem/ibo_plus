import 'dart:developer';

import 'package:ibo_plus/data/models/ibo/movies/movie.dart';

import '../../utils/category_type.dart';
import '../data_sources/isar_db.dart';
import '../data_sources/playlist_remote_datasource.dart';
import '../data_sources/tmdb_datasource.dart';
import '../models/ibo/category/category.dart';
import '../models/ibo/settings/data_event.dart';
import '../models/ibo/live/live_channel.dart';
import 'user_repository.dart';

class PlaylistRepository {
  static Future<void> initPlaylistsMetadata() async {
    await Future.wait(
      (await UserRepository.getPlaylists()).map(
        (p) => () async {
          IsarDB.instance
              .updatePlaylist(await PlaylistRemoteDatasource.initPlaylist(p));
        }.call(),
      ),
    );
  }

  static Future<void> refreshLiveChannels() async {
    try {
      final liveChannels = await PlaylistRemoteDatasource.getLiveChannels(
        m3uPlaylist: (await UserRepository.selectedPlaylist)!,
      );
      IsarDB.instance.storeLiveChannels(liveChannels);
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<void> refreshMovies() async {
    try {
      final movies = await PlaylistRemoteDatasource.getMovies(
        m3uPlaylist: (await UserRepository.selectedPlaylist)!,
      );
      IsarDB.instance.storeMovies(movies);
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<void> refreshMovieDetails(Movie movie) async {
    try {
      final movieDetails = await PlaylistRemoteDatasource.getMovieDetails(
        m3uPlaylist: (await UserRepository.selectedPlaylist)!,
        id: movie.streamId,
      );
      final tmdbId = int.tryParse('${movieDetails['info']?['tmdb_id']}');
      if (tmdbId != null) {
        final tmdbData = await TMDBDatasource.getMovieInfo(tmdbId);
        log(tmdbData.toString());
        // TODO: store movie details in movie object
        // IsarDB.instance.storeMovieDetails(movieDetails);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<void> refreshCategories(CategoryType type) async {
    final categories = await PlaylistRemoteDatasource.getCategories(
      m3uPlaylist: (await UserRepository.selectedPlaylist)!,
      categoryType: type,
    );
    IsarDB.instance.storeCategories(categories);
  }

  static Stream<DataEvent?> get playlistsNotifier =>
      IsarDB.instance.playlistsNotifier;

  static Stream<DataEvent?> get liveChannelsNotifier =>
      IsarDB.instance.liveChannelsNotifier;

  static Stream<DataEvent?> get liveCategoriesNotifier =>
      IsarDB.instance.liveCategoriesNotifier;

  static Future<List<LiveChannel>> getLiveChannels() async {
    final playlist = await UserRepository.selectedPlaylist;
    if (playlist == null) {
      return [];
    } else {
      return await IsarDB.instance.getLiveChannels(playlist);
    }
  }

  static Future<List<Movie>> getMovies() async {
    final playlist = await UserRepository.selectedPlaylist;
    if (playlist == null) {
      return [];
    } else {
      return await IsarDB.instance.getMovies(playlist);
    }
  }

  static Future<List<Category>> getCategories(CategoryType type) async {
    final playlist = await UserRepository.selectedPlaylist;
    if (playlist == null) {
      return [];
    } else {
      return await IsarDB.instance.getCategories(
        m3uPlaylist: playlist,
        type: type,
      );
    }
  }

  static Future<LiveChannel?> getChannelByStreamId(int? streamId) async {
    final playlist = await UserRepository.selectedPlaylist;
    if (playlist == null) {
      return null;
    } else {
      return await IsarDB.instance.getLiveChannelByStreamId(playlist, streamId);
    }
  }

  static Future<Category?> getCategoryById(int? id) async {
    final playlist = await UserRepository.selectedPlaylist;
    if (playlist == null) {
      return null;
    } else {
      return await IsarDB.instance.getCategoryById(
        m3uPlaylist: playlist,
        type: CategoryType.liveChannels,
        categoryId: id,
      );
    }
  }

  static void updateChannel(LiveChannel channel) async {
    IsarDB.instance.updateChannel(channel);
  }

  static void updateCategory(Category category) async {
    IsarDB.instance.updateCategory(category);
  }

  static void updateMovie(Movie movie) async {
    IsarDB.instance.updateMovie(movie);
  }
}
