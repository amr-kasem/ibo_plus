class DurationUtils {
  static String hhmmss(Duration duration) {
    int hours = duration.inHours;
    int minutes = (duration.inMinutes % 60);
    int seconds = (duration.inSeconds % 60);

    String formattedDuration =
        '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    return formattedDuration;
  }

  static String formatYMD(Duration duration) {
    // Assuming 1 year = 365 days, 1 month = 30 days
    int totalDays = duration.inDays;

    int years = totalDays ~/ 365;
    int remainingDaysAfterYears = totalDays % 365;

    int months = remainingDaysAfterYears ~/ 30;
    int remainingDaysAfterMonths = remainingDaysAfterYears % 30;

    int days = remainingDaysAfterMonths;

    List<String> parts = [];

    if (years > 0) {
      parts.add('$years ${years == 1 ? 'year' : 'years'}');
    }
    if (months > 0) {
      parts.add('$months ${months == 1 ? 'month' : 'months'}');
    }
    if (days > 0) {
      parts.add('$days ${days == 1 ? 'day' : 'days'}');
    }

    return parts.isEmpty ? '0 days' : parts.join(', ');
  }
}
