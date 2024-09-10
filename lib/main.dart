import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/movies/blocs/favorite_movie_cubit.dart';
import 'package:myapp/movies/blocs/network_cubit.dart';
import 'package:myapp/setup_hive.dart';
import 'package:myapp/setup_locator.dart';
import 'core/router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'movies/db/favorite_movie.dart';
import 'movies/blocs/movie_cubit.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupHive();
  setupLocator();
  final appRouter = AppRouter();
  // Initialize Hive
  await Hive.initFlutter();

  // Register adapters
  Hive.registerAdapter(FavoriteMovieAdapter()); // Your generated adapter

  // Open your box (Hive database)
  await Hive.openBox<FavoriteMovie>('favorite_movies');

  runApp(MyApp(appRouter: appRouter));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child:
      MultiBlocProvider(
        providers: [
          // Register your MovieCubit globally
          BlocProvider<MovieCubit>(
            create: (context) => getIt<MovieCubit>()..fetchPopularMovies(1),  // If using getIt for
            // dependency injection
          ),
          BlocProvider<FavoriteMovieCubit>(
            create: (context) => getIt<FavoriteMovieCubit>(),  // If using getIt for dependency injection
          ),

          BlocProvider<NetworkCubit>(
            create: (context) => getIt<NetworkCubit>()..checkInitialStatus(),  // If using getIt for dependency injection
          ),
        ],
      child:  MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(),  // AutoRoute's router delegate
        routeInformationParser: appRouter.defaultRouteParser(),  // Parse route information

      ),
      ),
    );
  }
}
