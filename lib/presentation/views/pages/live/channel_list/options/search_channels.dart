import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../../../../state_providers/live_states.dart';
import '../../../../widgets/ibo_textfield/text_field.dart';

class SearchChannels extends StatelessWidget {
  SearchChannels({
    super.key,
    required this.goBack,
  });

  final VoidCallback goBack;
  final _locator = GetIt.instance;
  late final _liveStates = _locator.get<LiveStates>();
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        return IboTextField(
          onChange: (_) {},
          onCancel: () {
            // state.searchChannels('');
            goBack();
          },
          onSubmit: (_) => goBack(),
          initialValue: ref.read(_liveStates.searchItems),
        );
      },
    );
  }
}
