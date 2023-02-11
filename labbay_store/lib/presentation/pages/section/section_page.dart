import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';
import 'package:labbay_store/presentation/pages/menu/components/add_menu_listtile.dart';
import 'package:labbay_store/presentation/routes/routes.dart';

class SectionPage extends StatefulWidget {
  const SectionPage({super.key});

  @override
  State<SectionPage> createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Bo’limlar",
        trailing: SvgPicture.asset(Assets.icons.addCircle),
        trailingFunc: () => Navigator.pushNamed(context, Routes.addSectionPage),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          left: 19.w,
          right: 19.w,
          top: 24.h,
          bottom: 100.h,
        ),
        children: const [
          AddMenuListTile(leadingText: "Burgerlar"),
          AddMenuListTile(leadingText: "Ichimliklar"),
        ],
      ),
    );
  }
}
