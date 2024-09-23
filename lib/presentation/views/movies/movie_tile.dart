import 'package:flutter/material.dart';

import '../../../data/models/ibo/movies/movie.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({
    super.key,
    required this.selected,
    required this.movie,
  });
  final bool selected;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: AnimatedScale(
        duration: Durations.medium1,
        alignment: Alignment.center,
        scale: selected ? 1.1 : 1,
        child: AnimatedContainer(
          duration: Durations.medium2,
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? Colors.amber : Colors.transparent,
              width: 2,
            ),
          ),
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.all(8),
          width: 120,
          height: 170,
          child: movie.streamIcon != null
              ? Image.network(
                  movie.streamIcon!,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                )
              : const Placeholder(),
        ),
      ),
    );
  }
}
