import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppUtils {
  static final providerContainer = ProviderContainer();
  static int fastHash(String string) {
    var hash = 0xcbf29ce484222325;

    var i = 0;
    while (i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }

    return hash;
  }

  static bool? intToNullableBool(int? i) => i == null ? null : i == 1;
  static int? boolToNullableInt(bool? b) => b == null
      ? null
      : b
          ? 1
          : 0;
  static bool intToBool(int i) => i == 1;
  static int boolToInt(bool b) => b ? 1 : 0;
  static String? toStr(x) => x == null ? null : '$x';
  static int clamp(int i, int max) => i > max
      ? max
      : i < 0
          ? 0
          : i;
  static int cycle(i, int max) => i % max;
}
