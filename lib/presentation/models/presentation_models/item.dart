import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/item.dart';

part 'item.freezed.dart';

@freezed
class ItemPresentationModel with _$ItemPresentationModel {
  const factory ItemPresentationModel({
    required Item object,
    required bool selected,
    required bool hovered,
  }) = _ItemPresentaionModel;

  factory ItemPresentationModel.fromitem(
    Item item,
  ) {
    return ItemPresentationModel(
      object: item,
      selected: false,
      hovered: false,
    );
  }
}
