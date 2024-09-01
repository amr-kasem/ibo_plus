import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'categories_list.dart';

class MoviesTabView extends ConsumerWidget {
  const MoviesTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: CategoriesList(),
    );
  }
}
