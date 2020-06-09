import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:how_to_recipes/core/constants/view_routes.dart';
import 'package:how_to_recipes/ui/screens/saved_recipes_screen.dart';
import 'package:how_to_recipes/ui/screens/splash_screen.dart';

/// Class that generates routes for the application
///   - Routes are generated by the list of routes in the app
///   - Routes can also require parameters. e.g. `PostDetailView(post: post)`
class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return GetRouteBase(
      settings: RouteSettings(name: settings.name),
      page: _generateView(settings),
      fullscreenDialog: _fullScreenDialogs.contains(settings.name),
    );
  }

  static Widget _generateView(RouteSettings settings) {
    switch (settings.name) {
      case ViewRoutes.splash:
        return SplashScreen();

      case ViewRoutes.home:
        return Container();

      case ViewRoutes.onboarding:
        return Container();
      case ViewRoutes.recipedetails:
        return Container();
      case ViewRoutes.savedrecipe:
        return SavedRecipesScreen();
      case ViewRoutes.addrecipe:
        return Container();
      case ViewRoutes.settings:
        return Container();

      default:
        return Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        );
    }
  }

  // Add routes that should behave as fullScreenDialogs
  static final _fullScreenDialogs = [
    // Routes.route_1,
    // Routes.route_2,
  ];
}