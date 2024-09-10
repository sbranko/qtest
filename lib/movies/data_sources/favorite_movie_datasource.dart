import 'package:hive/hive.dart';
import '../db/favorite_movie.dart';

abstract class FavoriteMovieDataSource {
  List<FavoriteMovie> getFavoriteMovies();
  Future<void> addFavoriteMovie(FavoriteMovie movie);
  Future<void> removeFavoriteMovie(int movieId);
  bool isFavorite(int movieId);
  Future<void> clearFavorites();
}

class FavoriteMovieDataSourceImpl implements FavoriteMovieDataSource {
  final Box<FavoriteMovie> _favoriteMovieBox;

  FavoriteMovieDataSourceImpl() : _favoriteMovieBox = Hive.box<FavoriteMovie>('favorite_movies');

  @override
  List<FavoriteMovie> getFavoriteMovies() {
    return _favoriteMovieBox.values.toList();
  }

  @override
  Future<void> addFavoriteMovie(FavoriteMovie movie) async {
    await _favoriteMovieBox.put(movie.id, movie);
  }

  @override
  Future<void> removeFavoriteMovie(int movieId) async {
    await _favoriteMovieBox.delete(movieId);
  }

  @override
  bool isFavorite(int movieId) {
    return _favoriteMovieBox.containsKey(movieId);
  }

  @override
  Future<void> clearFavorites() async {
    await _favoriteMovieBox.clear();
  }
}
