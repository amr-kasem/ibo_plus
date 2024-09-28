import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/entities/category.dart';
import '../../../../domain/entities/movie.dart';
import '../../../providers/movie_state.dart';
import '../../widgets/two_level_list/horizontal_list.dart';
import '../../widgets/two_level_list/two_level_list_controller.dart';
import 'movie_tile.dart';

class MoviesGrid extends ConsumerStatefulWidget {
  const MoviesGrid({
    super.key,
  });

  @override
  ConsumerState<MoviesGrid> createState() => _MoviesGridState();
}

class _MoviesGridState extends ConsumerState<MoviesGrid> {
  @override
  void initState() {
    ref.read(moviesControllerProvider.notifier).init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TwoLevelListController<Category>(
      mainListBuilder: (
        secondryListBuilder,
        scrollController,
        notifyMainList,
        focused,
      ) {
        return Consumer(
          builder: (_, WidgetRef ___, __) {
            final categories = ref.watch(
              moviesControllerProvider.select((s) => s.categories),
            );
            return ListWheelScrollView.useDelegate(
              clipBehavior: Clip.antiAlias,
              controller: scrollController,
              itemExtent: 204,
              diameterRatio: 8,
              squeeze: 0.6,
              onSelectedItemChanged: notifyMainList,
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (ctx, i) => secondryListBuilder(ctx, categories[i], i),
                childCount: categories.length,
              ),
            );
          },
        );
      },
      secondryListBuilder: (
        Category category,
        Function(FixedExtentScrollController) setScrollController,
        bool focused,
      ) {
        return Consumer(
          builder: (_, WidgetRef ref, __) {
            final controlelr = ref.watch(moviesControllerProvider.notifier);
            final movies = ref.watch(
              moviesControllerProvider.select((s) => s.getMovies(category)),
            );
            final scrollController = FixedExtentScrollController();
            setScrollController(scrollController);
            return HorizontalList<Movie>(
              id: category.data.categoryId,
              focused: focused,
              horizontalController: scrollController,
              header: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  category.data.categoryName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              items: movies,
              itemBuilder: (BuildContext context, Movie movie, bool selected) {
                controlelr.enrichMovieDetails(movie);
                return MovieTile(selected: selected, movie: movie);
              },
            );
          },
        );
      },
    );
  }
}
