import '../data/models/ibo/category/category.dart';
import '../data/repositories/playlist_repository.dart';
import '../utils/category_type.dart';

class MoviesServices {
  static Future<void> initialize() async {
    PlaylistRepository.refreshCategories(CategoryType.movies);
    PlaylistRepository.refreshMovies();
  }

  static Future<List<Movie>> getMovies() async {
    // return [];
    return await PlaylistRepository.getMovies();
  }

  static Future<void> enrichMovieDetails(Movie movie) async {
    await PlaylistRepository.refreshMovieDetails(movie);
  }

  static void refreshCategories() {
    PlaylistRepository.refreshCategories(CategoryType.movies);
  }

  static Future<List<Category>> getMoviesCategories() async {
    return await PlaylistRepository.getCategories(CategoryType.movies);
  }

  static void toggleFavoriteChannel(Movie movie) {
    movie.isFavorite = !movie.isFavorite;
    // PlaylistRepository.updateMovie(Movie);
  }

  static void toggleFavoriteCategory(Category category) {
    category.isFavorite = !category.isFavorite;
    PlaylistRepository.updateCategory(category);
  }
}
