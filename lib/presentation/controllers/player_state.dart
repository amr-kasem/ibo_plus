import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fvp/fvp.dart' as fvp;
import 'package:fvp/mdk.dart' as mdk;

part 'player_state.freezed.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default(null) mdk.Player? player,
  }) = _PlayerState;

  const PlayerState._();
}

class PlayerControllerNotifier extends Notifier<PlayerState> {
  @override
  PlayerState build() {
    fvp.registerWith(options: {
      'lowLatency': 1, // optional for network streams
    });
    return PlayerState(player: mdk.Player()
        // ..onEvent(
        //   (p0) {
        //     print(p0);
        //   },
        // )
        // ..onMediaStatus(
        //   (oldValue, newValue) {
        //     print('$oldValue,$newValue');

        //     return false;
        //   },
        // )
        // ..onStateChanged(
        //   (oldValue, newValue) {
        //     print('$oldValue,$newValue');
        //   },
        // ),
        );
  }

  void openMedia(String url) {
    stop();
    state = state.copyWith(player: mdk.Player());
    state.player!.media = url;
    play();
  }

  void play() {
    state.player!.state = mdk.PlaybackState.playing;
    state.player!.loop = -1;
  }

  void stop() {
    state.player!.state = mdk.PlaybackState.stopped;
  }
}

final playerControllerProvider =
    NotifierProvider<PlayerControllerNotifier, PlayerState>(
        () => PlayerControllerNotifier());
