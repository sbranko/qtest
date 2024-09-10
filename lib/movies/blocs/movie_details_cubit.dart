import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_objects/movie_details_bo.dart';
import '../db/favorite_movie.dart';
import '../repositories/favorite_movie_repository.dart';
import '../repositories/movie_repository.dart';

part 'movie_details_cubit.freezed.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = InitialDetails;
  const factory MovieDetailsState.loading() = LoadingDetails;
  const factory MovieDetailsState.loaded(MovieDetailsBO movieDetails)
  = LoadedDetails;
  const factory MovieDetailsState.error(String message) = ErrorDetails;
}

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final MovieRepository _repository;
  final FavoriteMovieRepository _favoritesMovieRepository;

  MovieDetailsCubit(this._repository, this._favoritesMovieRepository) : super(const MovieDetailsState
      .initial());

  Future<void> fetchMovieDetails(int movieId) async {
    emit(const MovieDetailsState.loading());
    try {
      final movieDTO = await _repository.getMovieDetails( movieId: movieId);
      final movieBO = MovieDetailsBO.fromDTO(movieDTO);
      final isFavorite = isMovieFavorite(movieBO.id);  // Check if it's favorite
      movieBO.isFavorite = isFavorite;
      emit(MovieDetailsState.loaded(movieBO));
    } catch (e) {
      emit(MovieDetailsState.error(e.toString()));
    }
  }

  // Method to check if the movie is a favorite
  bool isMovieFavorite(int movieId) {
    final favoriteMovies = _favoritesMovieRepository.getFavoriteMovies();
    return favoriteMovies.any((movie) => movie.id == movieId);
  }

  void toggleFavoriteMovie(MovieDetailsBO movie) {
    if (movie.isFavorite) {
      _favoritesMovieRepository.removeFavoriteMovie(movie.id);
    } else {
      final favoriteMovie = FavoriteMovie(
        id: movie.id,
        title: movie.title,
        originalTitle: movie.title,
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
  }
}
