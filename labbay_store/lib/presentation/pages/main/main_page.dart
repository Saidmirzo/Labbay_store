import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_store/presentation/pages/menu/menu_page.dart';
import 'package:labbay_store/presentation/pages/orders/new_orders_page.dart';
import 'package:labbay_store/presentation/pages/orders/orders_on_the_way_page.dart';
import 'package:labbay_store/presentation/pages/settings/view/settings_page.dart';

import '../../../config/constants/app_colors.dart';
import 'components/custom_bottom_navigation_bar.dart';


class MainPage extends StatelessWidget {
  MainPage({super.key});
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              NewOrdersPage(),
              OrdersOnTheWayPage(),
              MenuPage(),
              SettingsPage(),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 113.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.accentColor.withOpacity(0),
                    AppColors.accentColor.withOpacity(.8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          CustomBottomNavigationBar(pageController: pageController)
        ],
      ),
    );
  }
}
