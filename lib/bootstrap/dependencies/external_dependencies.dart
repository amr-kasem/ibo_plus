import 'package:auk_utils/auk_utils.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:riverpod/riverpod.dart';
import 'package:tmdb_api/tmdb_api.dart' as tmdb;

import 'dependencies_group.dart';

class ExternalDependencies extends DependenciesGroup {
  final GetIt _getIt = GetIt.instance;
  @override
  Future<void> setupDependencies() async {
    _getIt.registerSingleton<tmdb.TMDB>(
      tmdb.TMDB(tmdb.ApiKeys('tmdbApiKey', 'apiReadAccessTokenv4')),
    );
    _getIt.registerSingleton<ProviderContainer>(ProviderContainer());

    _getIt.registerSingleton<Dio>(Dio());

    _getIt.registerSingleton<AukUtils>(AukUtils());

    _getIt.registerSingleton<Logger>(Logger());
  }

  void _updateTMDB(String tmdbApiKey) {
    _getIt.unregister<tmdb.TMDB>();
    _getIt.registerSingleton<tmdb.TMDB>(
      tmdb.TMDB(tmdb.ApiKeys('tmdbApiKey', 'apiReadAccessTokenv4')),
    );
  }

  @override
  Future<void> updateDependencies(Map<String, dynamic> updateInfo) async {
    if (updateInfo.containsKey('tmdbApiKey')) {
      _updateTMDB(updateInfo['tmdbApiKey']);
    }
  }
}
