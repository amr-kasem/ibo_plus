import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../shared/types/no_parameters.dart';
import '../../../shared/types/use_case.dart';
import '../../entities/live_channel/live_channel.dart';
import '../../repositories/live_channel_repository.dart';
import '../settings/get_device_settings.dart';

class GetLiveChannels implements UseCase<List<LiveChannel>, NoParameters> {
  final _locator = GetIt.instance;
  late final _logger = _locator.get<Logger>();
  late final _liveRepository = _locator.get<LiveRepository>();
  late final _getDeviceSettings = _locator.get<GetDeviceSettings>();

  @override
  Future<List<LiveChannel>> call(_) async {
    final deviceSettings = await _getDeviceSettings(NoParameters());
    _logger.i(
        "fetching channels for playlist ${deviceSettings.selectedPlaylist?.data.playlistName}");
    if (deviceSettings.selectedPlaylist != null) {
      return await _liveRepository.readChannels(
        playlist: deviceSettings.selectedPlaylist!,
      );
    } else {
      return [];
    }
  }
}
