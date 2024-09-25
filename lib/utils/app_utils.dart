import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppUtils {
  static final providerContainer = ProviderContainer();
  static int? toInt(dynamic string) => int.tryParse('$string');
  static double? toDouble(dynamic string) => double.tryParse('$string');
  static String? numToString(num? n) => n?.toString();
  static int fastHash(String string) {
    var hash = 0xcbf29ce4; // Initialize with a 32-bit value
    var i = 0;
    while (i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash =
          (hash * 0x1b3) & 0xFFFFFFFF; // Ensure multiplication result is 32-bit
      hash ^= codeUnit & 0xFF;
      hash =
          (hash * 0x1b3) & 0xFFFFFFFF; // Ensure multiplication result is 32-bit
    }

    return hash & 0xFFFFFFFF; // Ensure the final result is a 32-bit integer
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
  static int clamp(int i, int max) => i < max
      ? i < 0
          ? 0
          : i
      : max;
  static int cycle(i, int max) => i % max;
}
