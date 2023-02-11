import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/app_text_styles.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/config/constants/local_data.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';

import '../../../config/constants/app_colors.dart';
import '../../../data/models/recipe_model.dart';
import '../../components/custom_list_tile.dart';
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

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
    required this.orderList,
  });
  final List<RecipeModel> orderList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 18.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: List.generate(
          orderList.length,
          (index) => Container(
            height: 61.h,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.borderColor),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderList[index].foodCategory,
                      style: AppTextStyles.body10w5.copyWith(
                        color: AppColors.unselectedText,
                      ),
                    ),
                    Text(
                      orderList[index].foodName,
                      style: AppTextStyles.b3Medium,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "${orderList[index].count} x ",
                        style: AppTextStyles.body10w5.copyWith(
                          color: AppColors.unselectedText,
                        ),
                        children: [
                          TextSpan(
                            text: "${orderList[index].price} UZS",
                            style: AppTextStyles.body10w5.copyWith(
                              color: AppColors.unselectedText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "${orderList[index].count * orderList[index].price} UZS",
                  style: AppTextStyles.body16w7.copyWith(color: AppColors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
