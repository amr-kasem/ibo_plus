import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../../services/isar_helper.dart';
import 'category_metadata.dart';

part 'category.g.dart';

@collection
class CategoryIsarModel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();

  @Index(composite: [CompositeIndex('playlistId')])
  final int categoryId;
  final String categoryName;
  final int parentId;

  @Index()
  late int playlistId;

  @Backlink(to: 'category')
  final meta = IsarLink<CategoryMetadataIsarModel>();

  CategoryIsarModel({
    required this.categoryId,
    required this.categoryName,
    required this.parentId,
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
