import 'package:get_it/get_it.dart';

import '../../../shared/types/no_parameters.dart';
import '../../../shared/types/use_case.dart';
import '../../repositories/live_channel_repository.dart';
import '../settings/get_device_settings.dart';

class RefreshLiveChannels implements UseCase<void, NoParameters> {
  final _locator = GetIt.instance;
  late final _refreshLiveChannels = _locator.get<LiveRepository>();
  late final _getDeviceSettings = _locator.get<GetDeviceSettings>();

  @override
  Future<void> call(params) async {
    final deviceSettings = await _getDeviceSettings(NoParameters());
    if (deviceSettings.selectedPlaylist != null) {
      _refreshLiveChannels.refreshChannels(
        playlist: deviceSettings.selectedPlaylist!,
      );
    }
  }
}
