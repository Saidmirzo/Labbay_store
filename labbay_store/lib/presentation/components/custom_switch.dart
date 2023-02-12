import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../config/constants/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  CustomSwitch({
    super.key,
    required this.isActive,
  });
  bool isActive;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: widget.isActive,
      inactiveColor: AppColors.green2.withOpacity(.3),
      activeColor: AppColors.green2.withOpacity(.6),
      toggleColor: AppColors.buttonColor.withOpacity(.12),
      toggleSize: 12.h,
      padding: 2,
      width: 27.w,
      height: 16.h,
      onToggle: (value) {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
    );
  }
}
