
import '../data_sources/favorite_movie_datasource.dart';
import '../db/favorite_movie.dart';

abstract class FavoriteMovieRepository {
  List<FavoriteMovie> getFavoriteMovies();
  Future<void> addFavoriteMovie(FavoriteMovie movie);
  Future<void> removeFavoriteMovie(int movieId);
  bool isFavorite(int movieId);
  Future<void> clearFavorites();
}


class FavoriteMovieRepositoryImpl implements FavoriteMovieRepository {
  final FavoriteMovieDataSource _dataSource;

  FavoriteMovieRepositoryImpl(this._dataSource);

  @override
  List<FavoriteMovie> getFavoriteMovies() {
    return _dataSource.getFavoriteMovies();
  }

  @override
  Future<void> addFavoriteMovie(FavoriteMovie movie) async {
    await _dataSource.addFavoriteMovie(movie);
  }

  @override
  Future<void> removeFavoriteMovie(int movieId) async {
    await _dataSource.removeFavoriteMovie(movieId);
  }

  @override
  bool isFavorite(int movieId) {
    return _dataSource.isFavorite(movieId);
  }

  @override
  Future<void> clearFavorites() async {
    await _dataSource.clearFavorites();
  }
}