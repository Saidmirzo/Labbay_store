import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class FoodListTile extends StatefulWidget {
  FoodListTile({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.isSwitched,
  });

  final String image;

  final String name;

  final String price;

  bool isSwitched;

  @override
  State<FoodListTile> createState() => _FoodListTileState();
}

class _FoodListTileState extends State<FoodListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87.h,
      padding: EdgeInsets.only(left: 10.w, right: 28.w),
      margin: EdgeInsets.symmetric(vertical: 6.h),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.accentColor,
      ),
      child: Row(
        children: [
          Image.asset(widget.image, width: 67.h, height: 67.h, fit: BoxFit.scaleDown),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              Text(widget.name, style: AppTextStyles.body16w5),
              Text(
                widget.price,
                style: AppTextStyles.body13w5.copyWith(color: AppColors.green),
              ),
            ],
          ),
          const Spacer(),
          FlutterSwitch(
            width: 27.w,
            height: 16.h,
            toggleSize: 12.r,
            activeColor: AppColors.green2.withOpacity(.3),
            inactiveColor: AppColors.green2.withOpacity(.3),
            toggleColor: widget.isSwitched ? AppColors.green : AppColors.green.withOpacity(.3),
            value: widget.isSwitched,
            borderRadius: 50.0,
            padding: 2.0,
            showOnOff: false,
            onToggle: (val) {
              setState(() {
                widget.isSwitched = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
