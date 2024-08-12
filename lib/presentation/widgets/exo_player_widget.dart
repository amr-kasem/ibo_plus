// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:video_player/video_player.dart';

// import '../providers/player_state.dart';

// class ExoPlayerWidget extends ConsumerStatefulWidget {
//   const ExoPlayerWidget({
//     super.key,
//   });

//   @override
//   ConsumerState<ExoPlayerWidget> createState() => _ExoPlayerWidgetState();
// }

// class _ExoPlayerWidgetState extends ConsumerState<ExoPlayerWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final controller = ref.watch(PlayerState.playerController);
//     Future.delayed(Duration.zero).then((_) {
//       controller?.play();
//     });
//     return controller == null
//         ? const Center(
//             child: Text('No Video'),
//           )
//         : VideoPlayer(controller);
//   }
// }
