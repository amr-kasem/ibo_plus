import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fvp/mdk.dart';
import 'package:video_player/video_player.dart';

class PlayerState {
  static final fpvPlayer = StateProvider<Player?>((ref) {
    return null;
  });
  static final playerController = StateProvider<VideoPlayerController?>((ref) {
    return null;
  });
}
