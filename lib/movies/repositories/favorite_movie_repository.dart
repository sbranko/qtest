import 'package:hive/hive.dart';

import '../entities/favorite_movie.dart';

class FavoriteMovieRepository {
  final Box<FavoriteMovie> _favoriteMovieBox;

  FavoriteMovieRepository() : _favoriteMovieBox = Hive.box<FavoriteMovie>('favorite_movies');

  // Get all favorite movies
  List<FavoriteMovie> getFavoriteMovies() {
    return _favoriteMovieBox.values.toList();
  }

  // Add a movie to favorites
  Future<void> addFavoriteMovie(FavoriteMovie movie) async {
    await _favoriteMovieBox.put(movie.id, movie);
  }

  // Remove a movie from favorites
  Future<void> removeFavoriteMovie(int movieId) async {
    await _favoriteMovieBox.delete(movieId);
  }

  // Check if a movie is a favorite
  bool isFavorite(int movieId) {
    return _favoriteMovieBox.containsKey(movieId);
  }

  // Clear all favorite movies
  Future<void> clearFavorites() async {
    await _favoriteMovieBox.clear();
  }
}
