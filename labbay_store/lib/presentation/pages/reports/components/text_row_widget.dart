import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class TextRowWidget extends StatelessWidget {
  const TextRowWidget({
    super.key,
    required this.text,
    required this.desc,
    this.descColor,
  });
  final String text;
  final String desc;
  final Color? descColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTextStyles.body14w5.copyWith(
              color: AppColors.chartBottomTextColor,
            ),
          ),
          Text(
            desc,
            style: AppTextStyles.body14w5.copyWith(
              color: descColor ?? AppColors.green,
            ),
          )
        ],
      ),
    );
  }
}