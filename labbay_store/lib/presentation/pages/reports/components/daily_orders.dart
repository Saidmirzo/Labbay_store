import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_store/presentation/pages/reports/components/text_row_widget.dart';

import '../../../../config/constants/app_text_styles.dart';

class DailyOrders extends StatelessWidget {
  const DailyOrders({
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
          const TextRowWidget(text: 'Umumiy buyurtmalar', desc: '971'),
          const TextRowWidget(text: 'Qabul qilinmaganlar', desc: '971'),
          const TextRowWidget(text: 'Qabul qilinganlar', desc: '804'),
          const TextRowWidget(text: 'Bajarilgan buyurtmalar', desc: '113'),
          const TextRowWidget(text: 'Bekor qilingan buyurtmalar', desc: '45'),
        ],
      ),
    );
  }
}
