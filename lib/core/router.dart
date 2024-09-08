import 'package:auto_route/auto_route.dart';
import 'package:myapp/presentation/pages/splash_page.dart';
import 'package:myapp/presentation/pages/home_page.dart';
import 'package:myapp/presentation/pages/movie_details_page.dart';
import 'package:myapp/presentation/pages/popular_movies_page.dart';
import 'package:myapp/presentation/pages/favorites_page.dart';
import 'package:myapp/domain/movies/entities/movie_bo.dart';

import '../data/models/movie_dto.dart';
part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page,Route',
)
class AppRouter extends  RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),


    AutoRoute(
      page: HomeRoute.page,
      children: [
        AutoRoute(page: PopularMoviesRoute.page),
        AutoRoute(page: FavoritesRoute.page),
      ],
    ),
    CustomRoute(page: MovieDetailsRoute.page,
      path: '/movie/:movieId',
      // Using CustomPageTransition directly within AutoRoute
      transitionsBuilder: CustomPageTransition.build,  // Use the custom transition
      durationInMilliseconds: 500, // Optional: Transition duration),
    ),

  ];
}