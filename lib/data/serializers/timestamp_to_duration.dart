import 'package:freezed_annotation/freezed_annotation.dart';

class TimeStampSecondsToDurationSerializer
    implements JsonConverter<Duration, double> {
  const TimeStampSecondsToDurationSerializer();

  @override
  Duration fromJson(double i) => Duration(
      seconds:
          (i - DateTime.timestamp().millisecondsSinceEpoch / 1000).toInt());

  @override
  double toJson(Duration v) =>
      (DateTime.timestamp().millisecondsSinceEpoch + v.inSeconds).toDouble();
}
