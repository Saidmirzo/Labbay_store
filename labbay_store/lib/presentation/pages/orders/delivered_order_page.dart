import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/app_text_styles.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/config/constants/local_data.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';

import '../../../config/constants/app_colors.dart';
import '../../components/custom_list_tile.dart';
import '../../components/recipe_card.dart';
import '../../components/time_text.dart';

class DeliveredOrderPage extends StatefulWidget {
  const DeliveredOrderPage({super.key});

  @override
  State<DeliveredOrderPage> createState() => _DeliveredOrderPageState();
}

class _DeliveredOrderPageState extends State<DeliveredOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: SvgPicture.asset(Assets.icons.arrowLeft2),
        leadingFunc: () => Navigator.pop(context),
        title: "Bobur Yuldashev",
      ),
      body: ListView(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 24.h,
          bottom: 100.h,
        ),
        children: [
          CustomListTile(
            avatar: Assets.images.user1,
            username: "Bobur Yuldashev",
            address: "177, Amir Temur ko'chasi",
            type: "Yetkazib berish",
            price: "126 000 UZS",
            rightColor: AppColors.yellow2,
            rightIcon: Assets.icons.success,
            margin: EdgeInsets.only(bottom: 12.h),
          ),
          RecipeCard(orderList: orderList),
          TimeText(
            text: "Buyurtma ushbu kuriyerga biriktirildi",
            textStyle: AppTextStyles.body12w5,
            padding: EdgeInsets.symmetric(vertical: 12.h),
          ),
          CustomListTile(
            username: "Farhod",
            address: "Kuryer",
            type: "Skuter",
            isCourier: true,
            rightColor: AppColors.yellow2,
            rightIcon: Assets.icons.success,
          ),
        ],
      ),
    );
  }
}

