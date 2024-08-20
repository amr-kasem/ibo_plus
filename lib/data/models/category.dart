import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utils/app_utils.dart';
import '../../utils/category_type.dart';

part 'category.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@collection
class Category {
  @Index(composite: [CompositeIndex('playlistId')])
  @JsonKey(fromJson: int.parse, toJson: AppUtils.toStr)
  final int categoryId;
  final String categoryName;
  final int parentId;
  @JsonKey(includeFromJson: false, includeToJson: false)
  @enumerated
  @Index()
  late CategoryType type;
  @Index(composite: [CompositeIndex('type')])
  @JsonKey(includeFromJson: false, includeToJson: false)
  late int playlistId;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isFavorite;
  Category({
    required this.categoryId,
    required this.categoryName,
    required this.parentId,
    this.isFavorite = false,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @override
  bool operator ==(Object other) {
    if (other is! Category) return false;
    return hashCode == other.hashCode;
  }

  Id get isarId => AppUtils.fastHash('$playlistId$categoryId');

  @override
  int get hashCode => isarId.hashCode;
}
