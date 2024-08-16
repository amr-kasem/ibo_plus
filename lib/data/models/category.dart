import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utils/app_utils.dart';
import '../../utils/category_type.dart';

part 'category.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@collection
class Category {
  @JsonKey(fromJson: int.tryParse, toJson: AppUtils.toStr)
  final Id? categoryId;
  final String categoryName;
  final int parentId;
  @JsonKey(includeFromJson: false, includeToJson: false)
  @enumerated
  @Index(composite: [CompositeIndex('playlistId')])
  late CategoryType type;
  @Index()
  @JsonKey(includeFromJson: false, includeToJson: false)
  late int playlistId;
  Category({
    required this.categoryId,
    required this.categoryName,
    required this.parentId,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @override
  bool operator ==(Object other) {
    if (other is! Category) return false;
    return hashCode == other.hashCode;
  }

  @override
  int get hashCode => categoryId.hashCode;
}
