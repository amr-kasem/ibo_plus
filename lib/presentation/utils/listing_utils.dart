class ListingUtils {
  static int clamp(int i, int max) => i < max
      ? i < 0
          ? 0
          : i
      : max;
  static int cycle(i, int max) => i % max;
}
