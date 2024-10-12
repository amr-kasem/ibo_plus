import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/category/category.dart';

part 'category.freezed.dart';

@freezed
class CategoryPresentaionModel with _$CategoryPresentaionModel {
  const factory CategoryPresentaionModel({
    required Category object,
    required bool selected,
    required bool hovered,
  }) = _CategoryPresentaionModel;

  factory CategoryPresentaionModel.fromCategory(
    Category category,
  ) {
    return CategoryPresentaionModel(
      object: category,
      selected: false,
      hovered: false,
    );
  }
}
