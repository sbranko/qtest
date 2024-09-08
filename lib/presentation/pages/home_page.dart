import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/presentation/bloc/favorite_movie_cubit.dart';
import '../../core/router.dart';
import '../bloc/movie_cubit.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // Define routes for navigation
  final List<PageRouteInfo> _routes = [
    PopularMoviesRoute(),
    FavoritesRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _routes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Stack(
          alignment: Alignment.topCenter, // Align to bottom
          children: [
         BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // Only trigger fetching favorite movies when Favorites tab is clicked
              if (index == 1) {
                context.read<FavoriteMovieCubit>().fetchFavoriteMovies();
              }else if (index == 0) {
                context.read<MovieCubit>().fetchPopularMovies(1);
              }

              // Switch tabs
              tabsRouter.setActiveIndex(index);
            },
            backgroundColor: const Color(0xFF111223),
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xFFFFA726),
            unselectedItemColor: Colors.white70,
            selectedFontSize: 0,
            items: [
              BottomNavigationBarItem(
                icon:
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Show line if this item is selected
                    tabsRouter.activeIndex == 0
                        ? Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.only(top: 0.0),
                      height: 2.0, // Height of the line
                      width: 110.0, // Width of the line
                      color: const Color(0xFFFFA726), // Color of the line (orange)
                    )
                        : const SizedBox(height: 2.0),
                    const SizedBox(height: 16.0),// Add space when line isn't
                    // shown
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the icon and label
                      children: [
                        SvgPicture.asset(
                          'assets/icons/movie_icon.svg',
                          color: tabsRouter.activeIndex == 0
                              ? const Color(0xFFFFA726)
                              : Colors.white70,
                          height: 24,
                        ),
                        const SizedBox(width: 8), // Space between icon and label
                        Text(
                          'Movies',
                          style: TextStyle(
                            color: tabsRouter.activeIndex == 0
                                ? const Color(0xFFFFA726)
                                : Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                label: '', // Hide the default label
              ),
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Show line if this item is selected
                    tabsRouter.activeIndex == 1
                        ? Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      height: 2.0, // Height of the line
                      width: 110.0, // Width of the line
                      color: const Color(0xFFFFA726), // Color of the line (orange)
                    )
                        : const SizedBox(height: 2.0), // Add space when line isn't shown
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the icon and label
                      children: [
                        SvgPicture.asset(
                          'assets/icons/favorite_icon.svg',
                          color: tabsRouter.activeIndex == 1
                              ? const Color(0xFFFFA726)
                              : Colors.white70,
                          height: 24,
                        ),
                        const SizedBox(width: 8), // Space between icon and label
                        Text(
                          'Favorites',
                          style: TextStyle(
                            color: tabsRouter.activeIndex == 1
                                ? const Color(0xFFFFA726)
                                : Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                label: '', // Hide the default label
              ),
            ],
          ),

        ],
        );
      },
    );
  }
}
