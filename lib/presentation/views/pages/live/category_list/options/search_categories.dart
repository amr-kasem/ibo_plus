import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../providers/live_state.dart';
import '../../../../widgets/ibo_textfield/text_field.dart';

class SearchCategories extends StatelessWidget {
  const SearchCategories({
    super.key,
    required this.goBack,
  });
  final VoidCallback goBack;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final state = ref.read(liveControllerProvider.notifier);
        return IboTextField(
          onChange: state.searchCategories,
          onCancel: () {
            state.searchChannels('');
            goBack();
          },
          onSubmit: (_) => goBack(),
          initialValue: state.stateSnapshot.searchChannels,
        );
      },
    );
  }
}
