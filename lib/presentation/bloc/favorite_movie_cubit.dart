import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/domain/movies/entities/favorite_movie.dart';


import '../../domain/movies/entities/movie_bo.dart';
import '../../domain/movies/repository/favorite_movie_repository.dart';
part 'favorite_movie_cubit.freezed.dart';

@freezed
class FavoriteMovieState with _$FavoriteMovieState {
  const factory FavoriteMovieState.initial() = Initial;
  const factory FavoriteMovieState.loading() = Loading;
  const factory FavoriteMovieState.loaded(List<MovieBO> favoriteMovies) =
  Loaded;
  const factory FavoriteMovieState.error(String message) = Error;
}

class FavoriteMovieCubit extends Cubit<FavoriteMovieState> {
  final FavoriteMovieRepository _favoriteMovieRepository;

  FavoriteMovieCubit(this._favoriteMovieRepository)
      : super(const FavoriteMovieState.initial());

  // Fetch favorite movies
  // Method to fetch the list of favorite movies
  void fetchFavoriteMovies() {
    final favoriteMovies = _favoriteMovieRepository.getFavoriteMovies();  // Get favorite movies from the repository
    favoriteMovies.forEach((name) {

      // Each 'name' represents the current 'element'.

      print('Hello, ${name.originalTitle}');

    });
    // Convert each MovieDTO to MovieBO using the toBO() method
    final favoriteMoviesBO = favoriteMovies.map((movieDTO) => movieDTO.toBO()).toList();

    emit(FavoriteMovieState.loaded(favoriteMoviesBO));  // Emit a new state with the list
    // of favorite movies
  }
  // Toggle favorite status for a movie
  bool toggleFavoriteMovie(MovieBO movie, int page) {
    if (movie.isFavorite) {
      _favoriteMovieRepository.removeFavoriteMovie(movie.id);
    } else {
      final favoriteMovie = FavoriteMovie(
        id: movie.id,
        title: movie.title,
        originalTitle: movie.originalTitle,
        overview: movie.overview,
        voteAverage: movie.voteAverage,
        posterUrl: movie.posterUrl,
        backdropUrl: movie.backdropUrl,
        genres: movie.genres,
        releaseDate: movie.releaseDate,
        isFavorite: true,
      );
      _favoriteMovieRepository.addFavoriteMovie(favoriteMovie);
    }

    // Update the local state in the Cubit
    movie.isFavorite = !movie.isFavorite;
    final updatedMovies = (state as Loaded).favoriteMovies.map((m) {

      return m.id == movie.id ? movie : m;
    }).toList();
    print('stanje cubit ${movie.isFavorite}');
    // emit (FavoriteMovieState.loaded(updatedMovies)); // Emit new state
    return  movie.isFavorite;
  }

  MovieBO?  updatedMovie(MovieBO movie) =>
      state.maybeMap(loaded: (s) => s.favoriteMovies.firstWhere((m) => m.id == movie.id),
          orElse: () => null);
}