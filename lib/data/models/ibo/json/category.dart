import 'package:freezed_annotation/freezed_annotation.dart';

import 'converters/string_to_int_converter.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryJsonModel with _$CategoryJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoryJsonModel({
    @StringToIntConverter() required int categoryId,
    required String categoryName,
    required int parentId,
  }) = _CategoryJsonModel;

  factory CategoryJsonModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryJsonModelFromJson(json);
}
