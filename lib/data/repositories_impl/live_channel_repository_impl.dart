import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../domain/entities/live_channel/live_channel.dart';
import '../../domain/entities/playlist/playlist.dart';
import '../../domain/repositories/live_channel_repository.dart';
import '../data_sources/iptv_remote/live_channel_remote_datasource.dart';
import '../data_sources/isar_local/live_datasource.dart';
import '../dtos/iptv/live_channel/live_channel.dart';
import '../dtos/isar/playlist/live_channel/live_channel.dart';
import '../mappers/live/live.dart';
import '../mappers/playlist/playlist.dart';

class LiveRepositoryImpl implements LiveRepository {
  final _locator = GetIt.instance;
  late final _remoteDatasource = _locator.get<LiveChannelRemoteDatasource>();
  late final _localDatasource = _locator.get<LiveLocalDatasource>();
  late final _liveChannelMapper = _locator.get<LiveChannelMapper>();
  late final _playlistMapper = _locator.get<PlaylistMapper>();
  late final _logger = _locator.get<Logger>();

  @override
  Future<List<LiveChannel>> readChannels({
    required Playlist playlist,
  }) async {
    final isarModels = await _localDatasource.getLiveChannels(
      playlist: _playlistMapper.toIsarModel(playlist),
    );
    _logger.i('Fetched ${isarModels.length} channels from local storage');
    final liveChannelsFuture = isarModels.asMap().entries.map(
          (iC) async => await _mapLiveChannel(dto: iC.value, index: iC.key),
        );

    final liveChannels = await Future.wait(liveChannelsFuture);
    _logger.i('mapped ${isarModels.length} channels to domain');
    return liveChannels
      ..sort((LiveChannel c1, LiveChannel c2) =>
          (c1.meta?.data.index ?? 0) - (c2.meta?.data.index ?? 0));
  }

  Future<LiveChannel> _mapLiveChannel({
    required LiveChannelIsarModel dto,
    required int index,
  }) async {
    // await _localDatasource.initLiveChannelMetadata(channel: dto, index: index);
    final liveChannel = _liveChannelMapper.toEntity(dto);

    return liveChannel;
  }

  @override
  Future<void> refreshChannels({
    required Playlist playlist,
  }) async {
    final liveChannelsRemote = await _remoteDatasource.getLiveChannels(
      playlist: playlist,
    );
    final liveChannelsIsar = liveChannelsRemote
        .map(_liveChannelMapper.toEntity<LiveChannelJsonModel>);
    final playlistIsarModel = _playlistMapper.toIsarModel(playlist);
    await _localDatasource.storeLiveChannels(
      playlist: playlistIsarModel,
      liveChannels:
          liveChannelsIsar.map(_liveChannelMapper.toIsarModel).toList(),
    );
  }

  @override
  Future<void> updateLiveChannel({required LiveChannel liveChannel}) async {
    final c = _liveChannelMapper.toIsarModel(liveChannel);
    await _localDatasource.updateLiveChannel(channel: c);
  }
}
