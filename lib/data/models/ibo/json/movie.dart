import 'package:freezed_annotation/freezed_annotation.dart';

import 'converters/string_to_nullable_double_converter.dart';
import 'converters/string_to_nullable_int_converter.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class MovieJsonModel with _$MovieJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieJsonModel({
    @JsonKey(name: 'num') int? movieNum,
    required String name,
    required String streamType,
    required int streamId,
    String? streamIcon,
    @StringToNullableDoubleConverter() double? rating,
    double? rating5Based,
    String? added,
    @StringToNullableIntConverter() int? categoryId,
    @Default("mp4") String? containerExtension,
    @StringToNullableIntConverter() int? customSid,
    // bool? directSource,
  }) = _MovieJsonModel;

  factory MovieJsonModel.fromJson(Map<String, dynamic> json) =>
      _$MovieJsonModelFromJson(json);
}
