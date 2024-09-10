import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/movies/business_objects/movie_bo.dart';
import '../db/favorite_movie.dart';
import '../repositories/favorite_movie_repository.dart';
import '../repositories/movie_repository.dart';

part 'movie_cubit.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = Initial;
  const factory MovieState.loading() = Loading;
  const factory MovieState.loaded(List<MovieBO> movies, int currentPage, bool hasReachedMax) = Loaded;
  const factory MovieState.error(String message) = Error;
}

class MovieCubit extends Cubit<MovieState> {
  final MovieRepository _repository;
  final FavoriteMovieRepository _favoritesMovieRepository;
  bool isFetching = false;

  MovieCubit(this._repository, this._favoritesMovieRepository) : super(const MovieState.initial());

  // Method to check if the movie is a favorite
  bool isMovieFavorite(int movieId) {
    final favoriteMovies = _favoritesMovieRepository.getFavoriteMovies();
    return favoriteMovies.any((movie) => movie.id == movieId);
  }
  // Fetch movies based on the current page
  Future<void> fetchPopularMovies(int page) async {
    if (isFetching) return;
    isFetching = true;

    try {
      final currentState = state;

      if (currentState is Initial || currentState is Error) {
        // Show the loading indicator if this is the first request
        emit(const MovieState.loading());
      }

      // Fetch the next page of movies
      final movies = await _repository.getPopularMovies(page: page);
      // Update the favorite status for each movie
        movies.map((movie) {
        final isFavorite = isMovieFavorite(movie.id);  // Check if it's favorite
        movie.isFavorite = isFavorite;
        print(' primer ${movie.isFavorite}');
        return movie; // Update favorite status
      }).toList();

      if (movies.isEmpty) {
        emit(MovieState.loaded([], page, true)); // No more movies, reached max
      } else {
        // Append new movies to the existing list
        if (currentState is Loaded) {
          final allMovies = List<MovieBO>.from(currentState.movies)..addAll(movies);

          // Update the favorite status for each movie
          final updatedMovies = allMovies.map((movie) {
            final isFavorite = isMovieFavorite(movie.id);  // Check if it's favorite
            movie.isFavorite = isFavorite;
            print(' primer ${movie.isFavorite}');
            return movie; // Update favorite status
          }).toList();


          emit(MovieState.loaded(updatedMovies, page, false));
        } else {
          emit(MovieState.loaded(movies, page, false));
        }
      }
    } catch (e) {
      emit(MovieState.error(e.toString()));
    } finally {
      isFetching = false;
    }
  }
// Toggle favorite movie
  bool toggleFavoriteMovie(MovieBO movie, int page) {
    if (movie.isFavorite) {
      _favoritesMovieRepository.removeFavoriteMovie(movie.id);
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
      _favoritesMovieRepository.addFavoriteMovie(favoriteMovie);
    }

    // Update the local state in the Cubit
    movie.isFavorite = !movie.isFavorite;
    final updatedMovies = (state as Loaded).movies.map((m) {

      return m.id == movie.id ? movie : m;
    }).toList();
    print('stanje cubit ${movie.isFavorite}');
    emit (MovieState.loaded(updatedMovies, page, false)); // Emit new state
    return  movie.isFavorite;
  }
  // Utility method to check if we need to load more movies
  bool shouldFetchMoreMovies(ScrollNotification scrollInfo, double threshold) {
    return scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent - threshold;
  }
  MovieBO?  updatedMovie(MovieBO movie) =>
      state.maybeMap(loaded: (s) => s.movies.firstWhere((m) => m.id == movie.id), orElse: () => null);

  // void toggleFavoriteMovie(Movie movie) {
  //   if (movie.isFavorite) {
  //     _favoriteMovieRepository.removeFavoriteMovie(movie.id);
  //   } else {
  //     final favoriteMovie = FavoriteMovie(id: movie.id, title: movie.title, description: movie.description);
  //     _favoriteMovieRepository.addFavoriteMovie(favoriteMovie);
  //   }
  //
  //   // Update the favorite status in the current list
  //   movie.isFavorite = !movie.isFavorite;
  //
  //   // Re-emit the updated movie list
  //   final updatedMovies = state.popularMovies.map((m) {
  //     return m.id == movie.id ? movie : m;
  //   }).toList();
  //
  //   emit(PopularMoviesLoaded(updatedMovies));
  // }
}
