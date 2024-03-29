import 'package:ecommerce/models/category_models.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is Route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();

      case HomeScreen.routeName:
        return HomeScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();

      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);

      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);

      case WishListScreen.routeName:
        return WishListScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
      ),
    );
  }
}
