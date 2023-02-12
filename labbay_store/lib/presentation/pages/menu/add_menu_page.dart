import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:labbay_store/presentation/components/custom_button.dart';
import 'package:labbay_store/presentation/pages/menu/components/add_menu_listtile.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/assets.dart';
import '../../components/custom_appbar.dart';
import 'components/add_menu_textfield.dart';

class AddMenuPage extends StatefulWidget {
  const AddMenuPage({super.key});

  @override
  State<AddMenuPage> createState() => _AddMenuPageState();
}

class _AddMenuPageState extends State<AddMenuPage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppBar(
        title: "Menyu qo’shish",
        leading: SvgPicture.asset(Assets.icons.arrowLeft2),
        leadingFunc: () => Navigator.pop(context),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 24.h,
          left: 20.w,
          right: 20.w,
          bottom: 100.h,
        ),
        children: [
          DottedBorder(
            radius: Radius.circular(15.r),
            borderType: BorderType.RRect,
            dashPattern: const [8, 8],
            color: AppColors.green,
            child: Container(
              height: 127.h,
              width: double.maxFinite,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.accentColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.icons.galleryAdd),
              ),
            ),
          ),
          AddMenuListTile(
            leadingText: "Bo'lim: ",
            titleText: "Burger",
            trailing: IconButton(
              onPressed: _showDialog,
              icon: SvgPicture.asset(Assets.icons.link),
            ),
          ),
          AddMenuListTile(
            leadingText: "O'lchov: ",
            titleText: "Biriktirish",
            trailing: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.icons.linkBlack),
            ),
          ),
          AddMenuListTile(
            leadingText: "Holati: ",
            titleText: "Ko’rinadigan",
            trailing: Padding(
              padding: EdgeInsets.only(right: 13.w),
              child: FlutterSwitch(
                width: 27.w,
                height: 16.h,
                toggleSize: 12.r,
                activeColor: AppColors.green2.withOpacity(.3),
                inactiveColor: AppColors.green2.withOpacity(.3),
                toggleColor:
                    visible ? AppColors.green : AppColors.green.withOpacity(.3),
                value: visible,
                borderRadius: 50.0,
                padding: 2.0,
                showOnOff: false,
                onToggle: (val) {
                  setState(() {
                    visible = val;
                  });
                },
              ),
            ),
          ),
          AddMenuTextField(
            height: 80.h,
            hintText: "Maxsulot nomi",
          ),
          AddMenuTextField(
            height: 142.h,
            hintText: "Tavsif",
          ),
          AddMenuTextField(
            height: 80.h,
            hintText: "Narxi",
          ),
          AddMenuTextField(
            height: 80.h,
            hintText: "Tayyorlanish vaqti",
          ),
        ],
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      barrierColor: AppColors.green.withOpacity(.4),
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: 295.h,
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 19.w),
              padding: EdgeInsets.symmetric(vertical: 15.h),
              decoration: BoxDecoration(
                color: AppColors.accentColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  CustomButton(
                    size: Size(310.w, 75.h),
                    bgColor: AppColors.freePlaceGrid,
                    text: "Burger",
                    textAlign: MainAxisAlignment.start,
                    onTap: () {},
                  ),
                  SizedBox(height: 12.h),
                  CustomButton(
                    size: Size(310.w, 75.h),
                    bgColor: AppColors.freePlaceGrid,
                    text: "Ichimliklar",
                    textAlign: MainAxisAlignment.start,
                    onTap: () {},
                  ),
                  const Spacer(),
                  CustomButton(
                    size: Size(310.w, 75.h),
                    bgColor: AppColors.green,
                    text: "Biriktirish",
                    textColor: AppColors.accentColor,
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
