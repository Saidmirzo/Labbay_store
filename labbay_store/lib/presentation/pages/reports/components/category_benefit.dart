import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_store/presentation/pages/reports/components/text_row_widget.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';

class CategoryBenefit extends StatelessWidget {
  const CategoryBenefit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Olingan foyda', style: AppTextStyles.body16w5),
          SizedBox(height: 14.h),
          const TextRowWidget(text: 'Umumiy hisob', desc: '1 213 000 UZS'),
          const TextRowWidget(text: 'Dastur komissiyasi', desc: '211 000 UZS'),
          const TextRowWidget(
            text: 'Foyda',
            desc: '1 002 000 UZS',
            descColor: AppColors.chartBottomTextColor,
          ),
        ],
      ),
    );
  }
}


