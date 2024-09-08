import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:myapp/core/dio_client.dart';
import 'package:myapp/data/repositories/movie_repository_impl.dart';
import 'package:myapp/domain/movies/repository/favorite_movie_repository.dart';
import 'package:myapp/presentation/bloc/favorite_movie_cubit.dart';
import 'package:myapp/presentation/bloc/movie_cubit.dart';
import 'package:myapp/presentation/bloc/movie_details_cubit.dart';

import 'domain/movies/repository/movie_repository.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  // Register Dio client
  getIt.registerLazySingleton<Dio>(() => DioClient().dio);

  // Register the repository
  getIt.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(getIt<Dio>()));
  getIt.registerLazySingleton<FavoriteMovieRepository>(() => FavoriteMovieRepository());

  // Register the Cubit
  getIt.registerFactory(() => MovieCubit(getIt<MovieRepository>(), getIt<FavoriteMovieRepository>()));
  getIt.registerFactory(() => MovieDetailsCubit(getIt<MovieRepository>()));
  getIt.registerFactory(() => FavoriteMovieCubit(getIt<FavoriteMovieRepository>
    ()));


}
