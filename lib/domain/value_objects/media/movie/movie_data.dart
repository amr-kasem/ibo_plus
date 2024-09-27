import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/serializers/string_to_nullable_double.dart';
import '../../../../data/serializers/string_to_nullable_int.dart';

part 'movie_data.freezed.dart';

@freezed
class MovieData with _$MovieData {
  const factory MovieData({
    @JsonKey(name: 'num') int? movieNum,
    required String name,
    required String streamType,
    required int streamId,
    String? streamIcon,
    @StringToNullableDoubleSerializer() double? rating,
    double? rating5Based,
    String? added,
    @StringToNullableIntSerializer() int? categoryId,
    @Default("mp4") String? containerExtension,
    @StringToNullableIntSerializer() int? customSid,
    // bool? directSource,
  }) = _MovieData;
}
