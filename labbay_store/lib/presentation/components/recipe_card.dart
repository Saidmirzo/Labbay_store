import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_store/config/constants/app_text_styles.dart';

import '../../../config/constants/app_colors.dart';
import '../../../data/models/recipe_model.dart';
import 'time_text.dart';

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
      child: Column(children: [
        ...List.generate(
          orderList.length,
          (index) => Container(
            height: 61.h,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.borderColor2),
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
                      style: AppTextStyles.body15w6.copyWith(color: AppColors.green),
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
        TimeText(
          text: "Обшая сумма",
          padding: EdgeInsets.only(top: 21.h, bottom: 2.h),
          textStyle: AppTextStyles.body12w5.copyWith(color: AppColors.green),
        ),
        Text(
          "65 000 UZS",
          style: AppTextStyles.body24wB.copyWith(color: AppColors.green),
        ),
      ]),
    );
  }
}
