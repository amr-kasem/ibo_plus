import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibo_info_data.freezed.dart';

@freezed
class IboInfoData with _$IboInfoData {
  factory IboInfoData({
    required String tmdbApiKey,
    required String devicekKey,
  }) = _IboInfoData;
}
