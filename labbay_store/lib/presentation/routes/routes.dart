import 'package:flutter/material.dart';
import 'package:labbay_store/presentation/pages/history/history_page.dart';
import 'package:labbay_store/presentation/pages/menu/menu_page.dart';
import 'package:labbay_store/presentation/pages/orders/delivered_order_page.dart';
import 'package:labbay_store/presentation/pages/orders/orders_on_the_way_page.dart';

import '../pages/main/main_page.dart';
import '../pages/map/googlemap_page.dart';
import '../pages/menu/add_menu_page.dart';
import '../pages/orders/new_orders_page.dart';
import '../pages/section/add_section_page.dart';
import '../pages/section/section_page.dart';

class Routes {
  static const mainPage = '/mainPage';
  static const newOrdersPage = '/newOrdersPage';
  static const googleMapPage = '/googleMapPage';
  static const ordersOnTheWayPage = '/ordersOnTheWayPage';
  static const menuPage = '/menuPage';
  static const addMenuPage = '/addMenuPage';
  static const sectionPage = '/sectionPage';
  static const addSectionPage = '/addSectionPage';
  static const historyPage = '/';
  static const deliveredOrderPage = '/deliveredOrderPage';

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
        case addMenuPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const AddMenuPage(),
          );
        case sectionPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const SectionPage(),
          );
        case addSectionPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const AddSectionPage(),
          );
        case historyPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HistoryPage(),
          );
        case deliveredOrderPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const DeliveredOrderPage(),
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
