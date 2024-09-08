import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/movies/entities/movie_bo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/domain/movies/entities/movie_bo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/movies/entities/movie_details_bo.dart';
import '../../domain/movies/repository/movie_repository.dart';

part 'movie_details_cubit.freezed.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = Initial;
  const factory MovieDetailsState.loading() = Loading;
  const factory MovieDetailsState.loaded(MovieDetailsBO movieDetails) = Loaded;
  const factory MovieDetailsState.error(String message) = Error;
}

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final MovieRepository _repository;


  MovieDetailsCubit(this._repository) : super(const MovieDetailsState.initial());

  Future<void> fetchMovieDetails(int movieId) async {
    emit(const MovieDetailsState.loading());
    try {
      final movieDTO = await _repository.getMovieDetails( movieId: movieId);
      final movieBO = MovieDetailsBO.fromDTO(movieDTO);
      emit(MovieDetailsState.loaded(movieBO));
    } catch (e) {
      emit(MovieDetailsState.error(e.toString()));
    }
  }
}
