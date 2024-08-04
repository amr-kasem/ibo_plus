import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fvp/fvp.dart';
import 'package:fvp/mdk.dart';

class PlayerState {
  static final player = Provider<Player>((ref) {
    registerWith();
    return Player();
  });
}
