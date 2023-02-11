import 'package:flutter/material.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class DateAndCostWidget extends StatelessWidget {
  const DateAndCostWidget({
    super.key,
    required this.date,
    required this.cost,
  });
  final String date;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            date,
            style: AppTextStyles.body10w5.copyWith(
              color: AppColors.chartBottomTextColor,
            ),
          ),
          Text(
            cost,
            style: AppTextStyles.head32w7.copyWith(
              color: AppColors.green,
            ),
          ),
        ],
      ),
    );
  }
}