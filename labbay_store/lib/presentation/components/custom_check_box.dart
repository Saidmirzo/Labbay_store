import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/assets.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  // final Function
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.h,
      width: 17.h,
      margin: EdgeInsets.only(right: 12.w, left: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: !isActive ? Border.all(color: AppColors.checkBoxColor) : null,
      ),
      child: isActive ? SvgPicture.asset(Assets.icons.check) : null,
    );
  }
}
