import '../../../data/models/genre_dto.dart';
import '../../../data/models/movie_details_dto.dart';
import '../../../data/models/movie_dto.dart';
import '../entities/movie_bo.dart';
import '../entities/movie_details_bo.dart';

abstract class MovieRepository {
  Future<List<MovieBO>> getPopularMovies({required int page});
  Future<MovieDetailsDTO> getMovieDetails({required int
  movieId});
  Future<GenreListDTO> getGenres();
}
