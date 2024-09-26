import 'package:flutter/material.dart';

import 'movies_grid.dart';

class MoviesTabView extends StatelessWidget {
  const MoviesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: MoviesGrid(),
    );
  }
}
