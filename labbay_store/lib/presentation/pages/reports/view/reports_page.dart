import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';

import '../components/category_benefit.dart';
import '../components/custom_line_chart.dart';
import '../components/custom_reporst_text_button.dart';
import '../components/daily_orders.dart';
import '../components/date_and_cost_widget.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  bool isday = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgraund,
      appBar: CustomAppBar(
        title: 'Hisobotlar',
        trailing: SvgPicture.asset(Assets.icons.calendar),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w).copyWith(top: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomReportsTextButton(
                  title: 'Kunlik',
                  onTap: () {
                    setState(() {
                      isday = true;
                    });
                  },
                  isActive: isday,
                ),
                CustomReportsTextButton(
                  title: 'Хaftalik',
                  onTap: () {
                    setState(() {
                      isday = false;
                    });
                  },
                  isActive: !isday,
                )
              ],
            ),
          ),
          Expanded(child: isday ? const Daily() : const Weekly()),
        ],
      ),
    );
  }
}

class Weekly extends StatelessWidget {
  const Weekly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 24.h, bottom: 30.h),
      physics: const BouncingScrollPhysics(),
      children: [
        const CustomLineChart(),
        const DateAndCostWidget(
          date: '8-noyabr 2022 yil     |     14-noyabr 2022 yil',
          cost: '1 002 000 UZS',
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h, bottom: 60.h),
          child: const CategoryBenefit(),
        ),
        const DailyOrders()
      ],
    );
  }
}

class Daily extends StatelessWidget {
  const Daily({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 24.h, bottom: 30.h),
      physics: const BouncingScrollPhysics(),
      children: [
        const DateAndCostWidget(
          date: '14-noyabr 2022 yil',
          cost: '136 000 UZS',
        ),
        Padding(
            padding: EdgeInsets.only(top: 24.h, bottom: 60.h),
            child: const CategoryBenefit()),
        const DailyOrders()
      ],
    );
  }
}
