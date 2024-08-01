import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeState {
  static final homeIndex = StateProvider((_) => 0);
  static final navBar = FocusNode();
  static final traversalBar = StateProvider((_) => true);
}
