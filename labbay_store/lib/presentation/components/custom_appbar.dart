import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import 'splash_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.leadingFunc,
    this.trailingFunc,
  });
  final String title;
  final Widget? leading;
  final Widget? trailing;
  final Function()? leadingFunc;
  final Function()? trailingFunc;

  @override
  Size get preferredSize => Size.fromHeight(122.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 25.w,
        right: 25.w,
        top: MediaQuery.of(context).padding.top,
      ),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 50,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SplashButton(
            onTap: leadingFunc ?? () {},
            child: leading ?? SizedBox(width: 24.w),
          ),
          Text(title, style: AppTextStyles.body16w5),
          SplashButton(
            onTap: trailingFunc ?? () {},
            child: trailing ?? SizedBox(width: 24.w),
          ),
        ],
      ),
    );
  }
}
