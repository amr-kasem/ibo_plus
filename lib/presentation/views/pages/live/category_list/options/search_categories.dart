import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../shared/types/category_type.dart';
import '../../../../../controllers/category_controller.dart';
import '../../../../../state_providers/live_states.dart';
import '../../../../widgets/ibo_textfield/text_field.dart';

class SearchCategories extends StatelessWidget {
  SearchCategories({
    super.key,
    required this.goBack,
  });
  final VoidCallback goBack;
  final _locator = GetIt.instance;
  late final _liveStates = _locator.get<LiveStates>();
  late final _categoryController = _locator.get<CategoryController>();
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        return IboTextField(
          onChange: (v) =>
              _categoryController.search(CategoryType.liveChannels, v),
          onCancel: () {
            _categoryController.search(CategoryType.liveChannels, '');
            goBack();
          },
          onSubmit: (_) => goBack(),
          initialValue: ref.read(_liveStates.searchCategories),
        );
      },
    );
  }
}
