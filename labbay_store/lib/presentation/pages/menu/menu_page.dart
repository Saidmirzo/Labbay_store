import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/app_text_styles.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/assets.dart';
import '../../components/custom_appbar.dart';
import '../../components/food_list_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppBar(
        title: "Menyular",
        trailing: SvgPicture.asset(Assets.icons.addCircle),
        trailingFunc: () {},
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        children: [
          Text(
            "Chizburgerlar",
            style: AppTextStyles.body12w4.copyWith(color: AppColors.unselectedText),
          ),
          ...List.generate(
            3,
            (index) => FoodListTile(
              image: Assets.images.gamburger,
              name: "Chiken Burger",
              price: "17 000 so’m",
              isSwitched: index != 0,
            ),
          ),
          Text(
            "Ichimliklar",
            style: AppTextStyles.body12w4.copyWith(color: AppColors.unselectedText),
          ),
          FoodListTile(
            image: Assets.images.cola,
            name: "Cola 1.5L",
            price: "17 000 so’m",
            isSwitched: true,
          ),
        ],
      ),
    );
  }
}
