import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class AddMenuTextField extends StatelessWidget {
  const AddMenuTextField({
    super.key,
    required this.height,
    required this.hintText,
    this.textEditingController,
  });
  final double height;
  final String hintText;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: TextField(
        controller: textEditingController,
        maxLines: 4,
        style: AppTextStyles.body16w4,
        decoration: InputDecoration.collapsed(
          hintText: hintText,
          hintStyle: AppTextStyles.body16w4.copyWith(
            color: AppColors.unselectedText,
          ),
        ),
      ),
    );
  }
}
