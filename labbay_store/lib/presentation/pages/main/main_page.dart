import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/assets.dart';

import '../../components/custom_appbar.dart';
import '../../components/custom_list_tile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green.withOpacity(.1),
      appBar: CustomAppBar(
        title: 'Bobur Yuldashev',
        leading: SvgPicture.asset(Assets.icons.arrowLeft2),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomListTile(
            avatar: Assets.images.user1,
            username: "Bobur Yuldashev",
            address: "177, Amir Temur ko’chasi",
            type: "Yetkazib berish",
            price: "126 000 UZS",
          ),
        ],
      ),
    );
  }
}
