import 'package:isar/isar.dart';

import '../../../../domain/types/category_type.dart';

part 'category.g.dart';

@collection
class Category {
  @Index(composite: [CompositeIndex('playlistId')])
  final int categoryId;
  final String categoryName;
  final int parentId;
  @enumerated
  @Index()
  late CategoryType type;
  @Index(composite: [CompositeIndex('type')])
  late int playlistId;
  bool isFavorite;
  Category({
    required this.categoryId,
    required this.categoryName,
    required this.parentId,
    this.isFavorite = false,
  });

  @override
  bool operator ==(Object other) {
    if (other is! Category) return false;
    return hashCode == other.hashCode;
  }

  Id get isarId => AppUtils.fastHash('$playlistId$categoryId');

  @override
  int get hashCode => isarId.hashCode;
}
