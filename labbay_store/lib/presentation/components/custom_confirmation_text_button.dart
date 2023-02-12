import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_decorations.dart';
import '../../config/constants/app_text_styles.dart';

class CustomConfirmationTextButton extends StatelessWidget {
  const CustomConfirmationTextButton({
    super.key,
    required this.text,
    required this.ontap,
    this.color, this.textColor,
  });
  final String text;
  final Function() ontap;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      style: AppDecorations.buttonStyle(
        bgColor: color ?? AppColors.buttonColor,
        borderRadius: 15,
        padding: EdgeInsets.symmetric(vertical: 18.h),
        size: const Size.fromWidth(double.maxFinite),
      ),
      child: Text(
        text,
        style: AppTextStyles.body16w5.copyWith(
          color:textColor?? AppColors.accentColor,
        ),
      ),
    );
  }
}
