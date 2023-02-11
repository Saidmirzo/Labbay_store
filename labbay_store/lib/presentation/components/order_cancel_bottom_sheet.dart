import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_store/config/constants/app_decorations.dart';
import 'package:labbay_store/config/constants/constants.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import 'custom_check_box.dart';

class OrderCancelBottomSheet extends StatefulWidget {
  const OrderCancelBottomSheet({
    super.key,
  });

  @override
  State<OrderCancelBottomSheet> createState() => _OrderCancelBottomSheetState();
}

class _OrderCancelBottomSheetState extends State<OrderCancelBottomSheet> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Container(
        height: 395.h,
        padding: EdgeInsets.symmetric(horizontal: 13.w).copyWith(top: 16.h),
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w, bottom: 12.h),
              child: Text('Buyurtmani bekor qilish',
                  style: AppTextStyles.body14w5),
            ),
            ...List.generate(
              3,
              (index) => OrderCancelItem(
                title: cancelBottomSheetItems[index],
                isActive: activeIndex == index,
                ontap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
            TextButton(
              onPressed: () {},
              style: AppDecorations.buttonStyle(
                  bgColor: AppColors.buttonColor,
                  borderRadius: 15.r,
                  size: Size(double.maxFinite, 65.h)),
              child: Text(
                'Davom etish',
                style: AppTextStyles.body16w5.copyWith(
                  color: AppColors.accentColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderCancelItem extends StatelessWidget {
  const OrderCancelItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.ontap,
  });
  final String title;
  final bool isActive;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ontap(),
      child: Container(
        height: 75.h,
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          color: AppColors.freePlaceGrid,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          children: [
            CustomCheckBox(isActive: isActive),
            Text(
              title,
              style: AppTextStyles.body16w5,
            ),
          ],
        ),
      ),
    );
  }
}
