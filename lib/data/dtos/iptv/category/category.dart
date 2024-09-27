import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../serializers/string_to_int.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryJsonModel with _$CategoryJsonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoryJsonModel({
    @StringToIntSerializer() required int categoryId,
    required String categoryName,
    required int parentId,
  }) = _CategoryJsonModel;

  factory CategoryJsonModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryJsonModelFromJson(json);
}
