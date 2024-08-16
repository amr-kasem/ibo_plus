import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/live_state.dart';
import '../../../../widgets/ibo_textfield/text_field.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final search =
            ref.read(liveControllerProvider.notifier).searchCategories;
        return IboTextField(
          onChange: search,
        );
      },
    );
  }
}
