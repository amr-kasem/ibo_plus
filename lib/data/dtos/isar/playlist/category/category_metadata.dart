import 'package:isar/isar.dart';

part 'category_metadata.g.dart';

@collection
class CategoryMetadataIsarModel {
  final Id cateogy;
  final int index;
  final DateTime lastUpdated;
  bool favorite;
  bool locked;
  CategoryMetadataIsarModel({
    required this.cateogy,
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
  int get hashCode => cateogy.hashCode;
}
