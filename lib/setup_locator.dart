import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:myapp/core/dio_client.dart';
import 'package:myapp/movies/blocs/favorite_movie_cubit.dart';
import 'package:myapp/movies/blocs/movie_details_cubit.dart';
import 'package:myapp/movies/data_sources/movie_data_source.dart';

import 'movies/blocs/network_cubit.dart';
import 'movies/data_sources/favorite_movie_datasource.dart';
import 'movies/repositories/favorite_movie_repository.dart';
import 'movies/repositories/movie_repository.dart';
import 'movies/blocs/movie_cubit.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  // Register Dio client
  getIt.registerLazySingleton<Dio>(() => DioClient().dio);
  getIt.registerLazySingleton<Connectivity>(() => Connectivity());

  // Register the repository
  getIt.registerLazySingleton<MovieDataSource>(() => MovieDataSourceImpl(getIt<Dio>()));
  getIt.registerLazySingleton<FavoriteMovieDataSource>(() =>
      FavoriteMovieDataSourceImpl());

  getIt.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl
    (getIt<MovieDataSource>()));

  getIt.registerLazySingleton<FavoriteMovieRepository>(() =>
      FavoriteMovieRepositoryImpl(getIt<FavoriteMovieDataSource>()));

  // Register the Cubit
  getIt.registerFactory(() => MovieCubit(getIt<MovieRepository>(), getIt<FavoriteMovieRepository>()));
  getIt.registerFactory(() => MovieDetailsCubit(getIt<MovieRepository>(), getIt<FavoriteMovieRepository>()));
  getIt.registerFactory(() => FavoriteMovieCubit(getIt<FavoriteMovieRepository>
    ()));
  getIt.registerFactory(() => NetworkCubit(getIt<Connectivity>()));


}
