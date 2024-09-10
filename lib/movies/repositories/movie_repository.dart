
import 'package:myapp/movies/dto/genre_dto.dart';

import '../business_objects/movie_bo.dart';
import '../data_sources/movie_data_source.dart';
import '../dto/movie_details_dto.dart';

abstract class MovieRepository {
  Future<List<MovieBO>> getPopularMovies({required int page});
  Future<MovieDetailsDTO> getMovieDetails({required int
  movieId});
  Future<GenreListDTO> getGenres();
}

class MovieRepositoryImpl implements MovieRepository {
  final MovieDataSource _movieDataSource;

  MovieRepositoryImpl(this._movieDataSource);

  @override
  Future<List<MovieBO>> getPopularMovies({required int page}) async {
    try {
      // Fetch popular movies from the data source
      final movieDTOs = await _movieDataSource.getPopularMovies(page: page);

      // Fetch genres from the data source
      final genres = await getGenres();

      // Convert the list of MovieDTOs to a list of MovieBOs
      return movieDTOs.map((dto) => MovieBO.fromDTO(dto, genres)).toList();
    } catch (error) {
      throw Exception("Failed to load popular movies");
    }
  }

  @override
  Future<MovieDetailsDTO> getMovieDetails({required int movieId}) async {
    try {
      // Fetch movie details from the data source
      return await _movieDataSource.getMovieDetails(movieId: movieId);
    } catch (error) {
      throw Exception("Failed to load movie details");
    }
  }

  @override
  Future<GenreListDTO> getGenres() async {
    try {
      // Fetch genres from the data source
      final genreDTOs = await _movieDataSource.getGenres();

      // Wrap the List<GenreDTO> into a GenreListDTO object
      return GenreListDTO(genres: genreDTOs);
    } catch (error) {
      throw Exception("Failed to load genres");
    }
  }
}