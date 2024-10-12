import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../../../shared/types/category_type.dart';
import '../../../../services/isar_helper.dart';
import 'category.dart';

part 'category_metadata.g.dart';

@collection
class CategoryMetadataIsarModel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();
  final int categoryId;
  final int index;
  final String categoryName;

  final DateTime lastUpdated;
  bool favorite;
  bool locked;
  final category = IsarLink<CategoryIsarModel>();
  @enumerated
  @Index()
  CategoryType type;

  @Index(composite: [CompositeIndex('type')])
  late int playlistId;

  CategoryMetadataIsarModel({
    required this.categoryId,
    required this.index,
    required this.categoryName,
    required this.lastUpdated,
    required this.type,
    this.favorite = false,
    this.locked = false,
  });
  @override
  bool operator ==(Object other) {
    if (other is! CategoryIsarModel) return false;
    return hashCode == other.hashCode;
  }

  Id get isarId => _isarHelper.fastHash('$playlistId$categoryId');

  @override
  int get hashCode => isarId.hashCode;
}
