import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

class TimeText extends StatelessWidget {
  const TimeText({
    super.key,
    required this.text,
    this.padding,
    this.textStyle,
  });

  final String text;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: TextAlign.end,
        style: textStyle??AppTextStyles.body8w5.copyWith(color: AppColors.unselectedText),
      ),
    );
  }
}
