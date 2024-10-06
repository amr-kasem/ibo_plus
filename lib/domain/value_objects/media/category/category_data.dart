import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/types/category_type.dart';

part 'category_data.freezed.dart';

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    required int categoryId,
    required String categoryName,
    required int parentId,
    required CategoryType type,
  }) = _CategoryData;
}
