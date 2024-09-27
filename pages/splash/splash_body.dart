import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../lib/presentation/views/widgets/loading_indicator.dart';

class SplashBody extends ConsumerWidget {
  const SplashBody({
    super.key,
    String? generatedId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 256,
          child: LoadingIndicator(size: 96),
        ),
        Center(
          child: Text(
            'Loading'.tr(),
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
