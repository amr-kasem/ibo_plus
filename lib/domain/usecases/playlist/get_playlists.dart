import 'package:get_it/get_it.dart';

import '../../../shared/types/no_parameters.dart';
import '../../../shared/types/use_case.dart';
import '../../entities/playlist/playlist.dart';
import '../../repositories/playlist_repository.dart';

class GetPlaylists implements UseCase<List<Playlist>, NoParameters> {
  final _locator = GetIt.instance;
  late final _playlistRepository = _locator.get<PlaylistRepository>();

  @override
  Future<List<Playlist>> call(_) async {
    return await _playlistRepository.getAllPlaylists();
  }
}
