import 'package:flutter/material.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/screen/category_screen.dart';
import 'package:herbal_app/screen/details_screen.dart';
import 'package:herbal_app/screen/home_screen.dart';
import 'package:herbal_app/screen/splash_screen.dart';

class RouteNames {
  RouteNames._();

  /// static const String myWorkScreen = "MyWorkScreen";
  /// static const String profileScreen = "ProfileScreen";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case CommonRouteNames.subScreen:
        final Map<String, dynamic>? args =
            settings.arguments as Map<String, dynamic>?;

        return MaterialPageRoute(
          builder: (context) => CategoryScreen(
            title: args?['title'],
            subCategories: args?['subCategories'],
          ),
        );
      case CommonRouteNames.detailsScreen:
        final Product? product = settings.arguments as Product?;
        return MaterialPageRoute(
            builder: (context) => DetailsScreen(product: product));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

class CommonRouteNames {
  CommonRouteNames._();

  static const String homeScreen = "/home";
  static const String subScreen = "/subScreen";
  static const String detailsScreen = "/detailsScreen";
}
