import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../shared/types/use_case.dart';
import '../../entities/live_channel/live_channel.dart';
import '../../repositories/live_channel_repository.dart';

class ToggleFavoriteChannel implements UseCase<void, LiveChannel> {
  final _locator = GetIt.instance;
  late final _logger = _locator.get<Logger>();
  late final _liveRepository = _locator.get<LiveRepository>();

  @override
  Future<void> call(channel) async {
    _logger.i("toggle favorite state for channel ${channel.data.name}");
    channel.toggleFavorite();
    await _liveRepository.updateLiveChannel(
      liveChannel: channel,
    );
  }
}
