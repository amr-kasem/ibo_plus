import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../serializers/string_to_nullable_double.dart';
import '../../../serializers/string_to_nullable_int.dart';

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
    @StringToNullableDoubleSerializer() double? rating,
    double? rating5Based,
    String? added,
    @StringToNullableIntSerializer() int? categoryId,
    @Default("mp4") String? containerExtension,
    @StringToNullableIntSerializer() int? customSid,
    // bool? directSource,
  }) = _MovieJsonModel;

  factory MovieJsonModel.fromJson(Map<String, dynamic> json) =>
      _$MovieJsonModelFromJson(json);
}
