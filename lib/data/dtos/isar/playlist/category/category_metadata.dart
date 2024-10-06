import 'package:isar/isar.dart';

import 'category.dart';

part 'category_metadata.g.dart';

@collection
class CategoryMetadataIsarModel {
  Id? id;
  final int index;
  final DateTime lastUpdated;
  bool favorite;
  bool locked;
  final category = IsarLink<CategoryIsarModel>();

  CategoryMetadataIsarModel({
    required this.index,
    required this.lastUpdated,
    this.favorite = false,
    this.locked = false,
  });

  @override
  bool operator ==(Object other) {
    if (other is! CategoryMetadataIsarModel) return false;
    return hashCode == other.hashCode;
  }

  @override
  int get hashCode => id.hashCode;
}
