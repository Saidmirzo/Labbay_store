import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class CustomReportsTextButton extends StatelessWidget {
  const CustomReportsTextButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.isActive,
  });
  final String title;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(15.r),
          onTap: () => onTap(),
          child: Container(
            height: 70.h,
            width: 162.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isActive ? AppColors.buttonColor : AppColors.accentColor,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 50,
                ),
              ],
            ),
            child: Text(
              title,
              style: AppTextStyles.body16w4.copyWith(
                color: isActive ? AppColors.accentColor : AppColors.black,
              ),
            ),
          ),
        ),
      );
    });
  }
}
