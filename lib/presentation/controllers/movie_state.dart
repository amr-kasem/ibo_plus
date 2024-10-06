// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import '../../domain/entities/category/category.dart';
// import '../../domain/entities/movies/movie.dart';

// part 'movie_state.freezed.dart';

// @freezed
// class MovieState with _$MovieState {
//   const factory MovieState({
//     @Default([]) List<Movie> allMovies,
//     @Default('') String searchMovies,
//     @Default([]) List<Category> allCategoris,
//     @Default('') String searchCategories,
//     @Default(false) bool isLoading,
//     Object? error,
//     @Default(false) bool notify,
//     @Default(false) bool onlyFavoriteCategories,
//   }) = _MovieState;

//   const MovieState._(); // Added for custom getters

//   // Custom Getters
//   List<Movie> getMovies(Category category) => [];
//   //  allMovies.where((c) {
//   //       return (c.data.categoryId == category.data.categoryId ||
//   //               category.data.categoryId == -2 ||
//   //               (category.data.categoryId == -1 && c..isFavorite)) &&
//   //           c.name.toLowerCase().contains(searchMovies.toLowerCase());
//   //     }).toList();

//   List<Category> get categories => [];
//   //  allCategoris
//   //     .where(
//   //       (c) =>
//   //           c.categoryName.toLowerCase().contains(
//   //                 searchCategories.toLowerCase(),
//   //               ) &&
//   //           (!onlyFavoriteCategories || c.isFavorite),
//   //     )
//   //     .toList();
// }

// class LiveController extends Notifier<MovieState> {

//   MovieState get stateSnapshot => state;
//   @override
//   MovieState build() => const MovieState(
//         isLoading: true,
//         error: null,
//       );

//   Future<void> init() async {
//     try {
//       final movies = <Movie>[]; // await MoviesServices.getMovies();
//       final categories =
//           <Category>[]; // await MoviesServices.getMoviesCategories();

//       // Update the state with the fetched data
//       state = state.copyWith(
//         allMovies: movies,
//         allCategoris: categories,
//         isLoading: false, // Loading finished
//       );
//     } catch (e) {
//       // Handle errors by updating the error state
//       state = state.copyWith(
//         isLoading: false, // Stop loading
//         error: e, // Store the error
//       );
//     }
//   }

//   void updateSearchmovies(String search) {
//     state = state.copyWith(searchMovies: search);
//   }

//   void updateSearchCategories(String search) {
//     state = state.copyWith(searchCategories: search);
//   }

//   void searchmovies(String v) async {
//     state = state.copyWith(
//       searchMovies: v,
//     );
//   }

//   void searchCategories(String v) async {
//     state = state.copyWith(
//       searchCategories: v,
//     );
//   }

//   void toggleFavoriteCategory(Category category) {
//     // MoviesServices.toggleFavoriteCategory(category);
//     // state = state.copyWith(
//     //   notify: !state.notify,
//     // );
//   }

//   void toggleFavoriteChannel(Movie channel) {
//     // MoviesServices.toggleFavoriteChannel(channel);
//     // state = state.copyWith(
//     //   notify: !state.notify,
//     // );
//   }

//   void toggleShowOnlyFavoriteCategories() {
//     state = state.copyWith(
//       onlyFavoriteCategories: !state.onlyFavoriteCategories,
//     );
//   }

//   void enrichMovieDetails(Movie movie) async {
//     // await MoviesServices.enrichMovieDetails(movie);
//   }
// }

// final moviesControllerProvider = NotifierProvider<LiveController, MovieState>(
//   () => LiveController(),
// );
