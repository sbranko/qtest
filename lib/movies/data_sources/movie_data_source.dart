import 'package:dio/dio.dart';
import '../dto/movie_dto.dart';
import '../dto/movie_details_dto.dart';
import '../dto/genre_dto.dart';

abstract class MovieDataSource {
  Future<List<MovieDTO>> getPopularMovies({required int page});
  Future<MovieDetailsDTO> getMovieDetails({required int movieId});
  Future<List<GenreDTO>> getGenres();
}

class MovieDataSourceImpl implements MovieDataSource {
  final Dio _dio;

  MovieDataSourceImpl(this._dio);

  @override
  Future<List<MovieDTO>> getPopularMovies({required int page}) async {
    final response = await _dio.get(
      '/movie/popular',
      queryParameters: {
        'api_key': 'b8d7f76947904a011286dc732c55234e',
        'page': page,
      },
    );

    return (response.data['results'] as List)
        .map((json) => MovieDTO.fromJson(json))
        .toList();
  }

  @override
  Future<MovieDetailsDTO> getMovieDetails({required int movieId}) async {
    final response = await _dio.get(
      '/movie/$movieId',
      queryParameters: {
        'api_key': 'b8d7f76947904a011286dc732c55234e',
      },
    );

    return MovieDetailsDTO.fromJson(response.data);
  }

  @override
  Future<List<GenreDTO>> getGenres() async {
    final response = await _dio.get('/genre/movie/list', queryParameters: {
      'api_key': 'b8d7f76947904a011286dc732c55234e',
    });

    return (response.data['genres'] as List)
        .map((genre) => GenreDTO.fromJson(genre))
        .toList();
  }
}
