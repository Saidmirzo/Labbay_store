import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/config/constants/local_data.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';
import 'package:labbay_store/presentation/routes/routes.dart';

import '../../components/custom_button.dart';
import '../../components/custom_list_tile.dart';
import '../../components/order_cancel_bottom_sheet.dart';
import '../../components/recipe_card.dart';

class OrderItemPage extends StatefulWidget {
  const OrderItemPage({super.key});

  @override
  State<OrderItemPage> createState() => _OrderItemPageState();
}

class _OrderItemPageState extends State<OrderItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: SvgPicture.asset(Assets.icons.arrowLeft2),
        leadingFunc: () => Navigator.pop(context),
        title: "Bobur Yuldashev",
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
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
                  rightIcon: Assets.icons.call,
                  margin: EdgeInsets.only(bottom: 12.h),
                ),
                RecipeCard(orderList: orderList),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    barrierColor: AppColors.green.withOpacity(.37),
                    builder: (context) {
                      return const OrderCancelBottomSheet();
                    },
                  );
                },
                text: 'Bekor qilish',
                bgColor: AppColors.messageButtonBg2,
              ),
              SizedBox(width: 12.w),
              CustomButton(
                onTap: () =>Navigator.pushNamed(context, Routes.orderComplatedPage),
                text: 'Qabul qilish',
                bgColor: AppColors.green,
                textColor: AppColors.accentColor,
              ),
            ],
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
