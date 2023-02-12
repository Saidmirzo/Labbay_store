import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/config/constants/local_data.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';
import 'package:labbay_store/presentation/components/custom_confirmation_text_button.dart';
import 'package:labbay_store/presentation/pages/orders/components/booking_order_bottom_sheet.dart';
import '../../../config/constants/app_colors.dart';
import '../../components/custom_list_tile.dart';
import '../../components/order_cancel_bottom_sheet.dart';
import '../../components/recipe_card.dart';

class OrderComplatedPage extends StatefulWidget {
  const OrderComplatedPage({super.key});

  @override
  State<OrderComplatedPage> createState() => _OrderComplatedPageState();
}

class _OrderComplatedPageState extends State<OrderComplatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: SvgPicture.asset(Assets.icons.arrowLeft2),
        leadingFunc: () => Navigator.pop(context),
        title: "Yangi buyurtmalar",
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w).copyWith(
              bottom: 20.h,
            ),
            child: CustomConfirmationTextButton(
              text: 'Buyurtmani tayyorlashni boshlash',
              ontap: () {
                showModalBottomSheet(
                  context: context,
                  barrierColor: AppColors.green.withOpacity(.37),
                  builder: (context) {
                    return const BookingOrderBottomSheet();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
