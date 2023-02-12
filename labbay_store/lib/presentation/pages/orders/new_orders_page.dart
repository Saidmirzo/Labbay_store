import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';
import 'package:labbay_store/presentation/components/custom_list_tile.dart';
import 'package:labbay_store/presentation/components/time_text.dart';
import 'package:labbay_store/presentation/routes/routes.dart';

class NewOrdersPage extends StatefulWidget {
  const NewOrdersPage({super.key});

  @override
  State<NewOrdersPage> createState() => _NewOrdersPageState();
}

class _NewOrdersPageState extends State<NewOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppBar(
        title: "Yangi buyurtmalar",
        trailing: SvgPicture.asset(Assets.icons.scanner),
        trailingFunc: () {},
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TimeText(
                      text: "9:35 20/10/2020",
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                    ),
                    CustomListTile(
                      avatar: Assets.images.user1,
                      username: "Bobur Yuldashev",
                      address: "177, Amir Temur ko'chasi",
                      type: "Yetkazib berish",
                      price: "126 000 UZS",
                      callFunc: () => Navigator.pushNamed(
                        context,
                        Routes.deliveredOrderPage,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
