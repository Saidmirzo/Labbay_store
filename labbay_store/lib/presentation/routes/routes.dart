import 'package:flutter/material.dart';
import 'package:labbay_store/presentation/pages/menu/menu_page.dart';
import 'package:labbay_store/presentation/pages/orders_on_the_way/orders_on_the_way_page.dart';

import '../pages/main/main_page.dart';
import '../pages/map/googlemap_page.dart';
import '../pages/new_orders/new_orders_page.dart';

class Routes {
  static const mainPage = '/mainPage';
  static const newOrdersPage = '/newOrdersPage';
  static const googleMapPage = '/googleMapPage';
  static const ordersOnTheWayPage = '/ordersOnTheWayPage';
  static const menuPage = '/';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args = routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case mainPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MainPage(),
          );
        case newOrdersPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const NewOrdersPage(),
          );
        case googleMapPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const GoogleMapPage(),
          );
        case ordersOnTheWayPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const OrdersOnTheWayPage(),
          );
        case menuPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MenuPage(),
          );
        
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const MainPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MainPage(),
      );
    }
  }
}
