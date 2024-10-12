import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/types/category_type.dart';

part 'category_metadata.freezed.dart';

@freezed
class CategoryMetadata with _$CategoryMetadata {
  const factory CategoryMetadata({
    required int index,
    required DateTime lastUpdated,
    required bool favorite,
    required bool locked,
    required CategoryType type,
    required int categoryId,
    required String categoryName,
  }) = _CategoryMetadata;
}
