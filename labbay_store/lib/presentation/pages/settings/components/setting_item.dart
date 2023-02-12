import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.title,
    required this.iconPath,
    this.subTitle,
    this.traling,
    required this.onTap,
  });
  final String title;
  final String iconPath;
  final String? subTitle;
  final Widget? traling;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 88.h,
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.only(left: 25.w, right: 19.w),
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
          children: [
            SvgPicture.asset(iconPath),
            SizedBox(width: 21.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.body16w5),
                subTitle != null
                    ? Text(
                        subTitle ?? '',
                        style: AppTextStyles.body12w5.copyWith(
                          color: AppColors.unselectedText,
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
            const Spacer(),
            traling ?? const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
