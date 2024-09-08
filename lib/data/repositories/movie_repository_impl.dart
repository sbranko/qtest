import 'package:dio/dio.dart';
import 'package:myapp/data/models/movie_dto.dart';
import 'package:myapp/data/models/genre_dto.dart';

import '../../domain/movies/entities/movie_bo.dart';
import '../../domain/movies/entities/movie_details_bo.dart';
import '../../domain/movies/repository/movie_repository.dart';
import '../models/movie_details_dto.dart';

class MovieRepositoryImpl implements MovieRepository {
  final Dio _dio;

  MovieRepositoryImpl(this._dio);

  @override
  Future<List<MovieBO>> getPopularMovies({required int page}) async {
    try {
      // Fetch popular movies from the API
      final response = await _dio.get(
        '/movie/popular',
        queryParameters: {
          'api_key': 'b8d7f76947904a011286dc732c55234e',
          'page': page,
        },
      );

      // Convert the response data to a list of MovieDTOs
      final List<MovieDTO> movieDTOs = (response.data['results'] as List)
          .map((json) => MovieDTO.fromJson(json))
          .toList();

      // Fetch genres from the API
      final genres = await getGenres();

      // Convert the list of MovieDTOs to a list of MovieBOs
      return movieDTOs.map((dto) => MovieBO.fromDTO(dto, genres)).toList();
    } catch (error) {
      // Handle exceptions and print error for debugging
      print("page number movies: $page");
      print("Error fetching popular movies: $error");
      throw Exception("Failed to load popular movies");
    }
  }

  @override
  Future<MovieDetailsDTO> getMovieDetails({required int
  movieId}) async {
    try {
      // Fetch popular movies from the API
      final response = await _dio.get(
        '/movie/$movieId',
        queryParameters: {
          'api_key': 'b8d7f76947904a011286dc732c55234e',
        },
      );

      print("${response.data}");
      // Convert the list of MovieDTOs to a list of MovieBOs
      return MovieDetailsDTO.fromJson(response.data);
    } catch (error) {
      // Handle exceptions and print error for debugging
      print("Error fetching popular movies: $error");
      throw Exception("Failed to load popular movies");
    }
  }

  @override
  Future<GenreListDTO> getGenres() async {
    try {
      final response = await _dio.get('/genre/movie/list', queryParameters: {
        'api_key': 'b8d7f76947904a011286dc732c55234e',
      });

      // Parse the 'genres' list from the response and convert it to List<GenreDTO>
      List<GenreDTO> genreList = (response.data['genres'] as List)
          .map((genre) => GenreDTO.fromJson(genre))
          .toList();

      // Wrap the List<GenreDTO> into a GenreListDTO object
      return GenreListDTO(genres: genreList);
    } catch (error) {
      print("Error fetching genres: $error");
      throw Exception("Failed to load genres");
    }
  }

}
