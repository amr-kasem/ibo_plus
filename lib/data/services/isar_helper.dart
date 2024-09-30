class IsarHelper {
  int fastHash(String string) {
    var hash = 0xcbf29ce484222325; // Initialize with a 64-bit value
    var i = 0;
    while (i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash =
          (hash * 0x100000001b3) & 0xFFFFFFFFFFFFFFFF; // 64-bit multiplication
      hash ^= codeUnit & 0xFF;
      hash =
          (hash * 0x100000001b3) & 0xFFFFFFFFFFFFFFFF; // 64-bit multiplication
    }

    return hash; // Return 64-bit hash
  }
}
