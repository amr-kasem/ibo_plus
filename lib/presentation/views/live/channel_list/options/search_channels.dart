import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/live_state.dart';
import '../../../../widgets/ibo_textfield/text_field.dart';

class SearchChannels extends StatelessWidget {
  const SearchChannels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final search = ref.read(liveControllerProvider.notifier).searchChannels;
        return IboTextField(
          onChange: search,
        );
      },
    );
  }
}
