import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/assets.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_list_tile.dart';

class OrdersOnTheWayPage extends StatefulWidget {
  const OrdersOnTheWayPage({super.key});

  @override
  State<OrdersOnTheWayPage> createState() => _OrdersOnTheWayPageState();
}

class _OrdersOnTheWayPageState extends State<OrdersOnTheWayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppBar(
        leadingFunc: () => Navigator.pop(context),
        leading: SvgPicture.asset(Assets.icons.arrowLeft2),
        title: "Yo'ldagi buyurmalar",
        trailing: SvgPicture.asset(Assets.icons.moneyTime),
        trailingFunc: () {},
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        children: [
          CustomListTile(
            avatar: Assets.images.user1,
            username: "Bobur Yuldashev",
            address: "177, Amir Temur ko'chasi",
            type: "Yetkazib berish",
            price: "126 000 UZS",
          ),
        ],
      ),
    );
  }
}
