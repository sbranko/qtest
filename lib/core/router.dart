import 'package:auto_route/auto_route.dart';
import 'package:myapp/movies/ui/splash_page.dart';
import 'package:myapp/movies/ui/home_page.dart';
import 'package:myapp/movies/ui/movie_details_page.dart';
import 'package:myapp/movies/ui/popular_movies_page.dart';
import 'package:myapp/movies/ui/favorites_page.dart';

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