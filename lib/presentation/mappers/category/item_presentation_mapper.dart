import '../../../domain/entities/item.dart';
import '../../models/presentation_models/item.dart';

abstract class ItemPresentationMapper {
  ItemPresentationModel fromItem(Item item) {
    return ItemPresentationModel(
      object: item,
      selected: false,
      hovered: false,
    );
  }

  Item toItem(ItemPresentationModel item) {
    return item.object;
  }
}
