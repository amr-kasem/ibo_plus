import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../../../../../shared/types/category_type.dart';
import '../../../../services/isar_helper.dart';

part 'category.g.dart';

@collection
class CategoryIsarModel {
  @ignore
  final _isarHelper = GetIt.instance.get<IsarHelper>();

  @Index(composite: [CompositeIndex('playlistId')])
  final int categoryId;
  final String categoryName;
  final int parentId;
  @enumerated
  @Index()
  late CategoryType type;
  @Index(composite: [CompositeIndex('type')])
  late int playlistId;
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
