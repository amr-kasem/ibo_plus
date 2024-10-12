import 'package:get_it/get_it.dart';

import '../../../domain/entities/live_channel/live_channel.dart';
import '../../../domain/value_objects/media/live_channel/live_channel_data.dart';
import '../../dtos/iptv/live_channel/live_channel.dart';
import '../../dtos/isar/playlist/live_channel/live_channel.dart';
import 'live_meta.dart';

class LiveChannelMapper {
  final _locator = GetIt.instance;
  late final _metaMapper = _locator.get<LiveMetaMapper>();
  LiveChannelIsarModel toIsarModel(LiveChannel channel) {
    return LiveChannelIsarModel(
      categoryId: channel.data.categoryId,
      added: channel.data.added,
      channelNum: channel.data.channelNum,
      customSid: channel.data.customSid,
      directSource: channel.data.directSource,
      epgChannelId: channel.data.epgChannelId,
      isAdult: channel.data.isAdult,
      name: channel.data.name,
      streamIcon: channel.data.streamIcon,
      streamId: channel.data.streamId,
      streamType: channel.data.streamType,
      tvArchive: channel.data.tvArchive,
    );
  }

  LiveChannel toEntity<T>(T dto) {
    final data = _toData<T>(dto);
    final channel = LiveChannel(data: data);
    if (dto is LiveChannelIsarModel) {
      if (dto.meta.value != null) {
        channel.meta = _metaMapper.toEntity(dto.meta.value!);
      }
    }
    return channel;
  }

  LiveChannelData _toData<T>(T channelJsonModel) {
    if (channelJsonModel is LiveChannelJsonModel) {
      return _jsonModelToData(channelJsonModel as LiveChannelJsonModel);
    } else if (channelJsonModel is LiveChannelIsarModel) {
      return _isarModelToData(channelJsonModel as LiveChannelIsarModel);
    } else {
      throw ArgumentError('Invalid category model type');
    }
  }

  LiveChannelData _isarModelToData(LiveChannelIsarModel channelJsonModel) {
    return LiveChannelData(
      categoryId: channelJsonModel.categoryId,
      added: channelJsonModel.added,
      channelNum: channelJsonModel.channelNum,
      customSid: channelJsonModel.customSid,
      directSource: channelJsonModel.directSource,
      epgChannelId: channelJsonModel.epgChannelId,
      isAdult: channelJsonModel.isAdult ?? false,
      name: channelJsonModel.name,
      streamIcon: channelJsonModel.streamIcon,
      streamId: channelJsonModel.streamId,
      streamType: channelJsonModel.streamType,
      tvArchive: channelJsonModel.tvArchive,
    );
  }

  LiveChannelData _jsonModelToData(LiveChannelJsonModel channelIsarModel) {
    return LiveChannelData(
      categoryId: channelIsarModel.categoryId,
      added: channelIsarModel.added,
      channelNum: channelIsarModel.channelNum,
      customSid: channelIsarModel.customSid,
      directSource: channelIsarModel.directSource,
      epgChannelId: channelIsarModel.epgChannelId,
      isAdult: channelIsarModel.isAdult,
      name: channelIsarModel.name,
      streamIcon: channelIsarModel.streamIcon,
      streamId: channelIsarModel.streamId,
      streamType: channelIsarModel.streamType,
      tvArchive: channelIsarModel.tvArchive,
    );
  }
}
