import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/app_text_styles.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';
import 'package:labbay_store/presentation/routes/routes.dart';

import '../../../config/constants/assets.dart';
import '../../components/custom_list_tile.dart';
import '../../components/time_text.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  String text = "9:35 20/10/2020";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Buyurtmalar tarixi",
      ),
      body: ListView(
        padding: EdgeInsets.only(
          left: 19.w,
          right: 19.w,
          top: 24.h,
          bottom: 100.h,
        ),
        children: [
          TimeText(
            text: text,
            padding: EdgeInsets.symmetric(vertical: 8.h),
          ),
          CustomListTile(
            avatar: Assets.images.user1,
            username: "Bobur Yuldashev",
            address: "177, Amir Temur ko'chasi",
            type: "Yetkazib berish",
            price: "126 000 UZS",
            rightColor: AppColors.yellow2,
            rightIcon: Assets.icons.success,
            callFunc: () => Navigator.pushNamed(context, Routes.deliveredOrderPage),
          ),
          TimeText(
            text: text,
            padding: EdgeInsets.symmetric(vertical: 8.h),
          ),
          CustomListTile(
            avatar: Assets.images.user1,
            username: "Bobur Yuldashev",
            address: "177, Amir Temur ko'chasi",
            type: "Yetkazib berish",
            price: "126 000 UZS",
            rightColor: AppColors.yellow2,
            rightIcon: Assets.icons.success,
            callFunc: () => Navigator.pushNamed(context, Routes.deliveredOrderPage),
          ),
        ],
      ),
    );
  }
}


