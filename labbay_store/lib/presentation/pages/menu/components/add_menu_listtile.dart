import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class AddMenuListTile extends StatelessWidget {
  const AddMenuListTile({
    super.key,
    this.leadingText,
    this.titleText,
    this.trailing,
  });
  final String? leadingText;
  final String? titleText;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 12.h),
      padding: EdgeInsets.only(left: 23.w, right: 5.w),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(text: leadingText, style: AppTextStyles.body14w4, children: [
              TextSpan(
                text: titleText,
                style: AppTextStyles.body16w5.copyWith(color: AppColors.green),
              ),
            ]),
          ),
          trailing ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
