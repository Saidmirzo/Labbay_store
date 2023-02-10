import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';
import 'splash_button.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.avatar,
    required this.username,
    required this.address,
    required this.type,
    required this.price,
    this.callFunc,
    this.avatarRadius,
  });

  final String avatar;
  final String username;
  final String address;
  final String type;
  final String price;
  final double? avatarRadius;
  final Function()? callFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 14.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.accentColor,
      ),
      child: Row(
        children: [
          CircleAvatar(
            foregroundImage: AssetImage(avatar),
            radius: avatarRadius ?? 38.r,
          ),
          SizedBox(width: 24.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(username, style: AppTextStyles.body14w5),
                  Text(
                    address,
                    style: AppTextStyles.body10w5.copyWith(
                      color: AppColors.unselectedText,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "Turi: ",
                        style: AppTextStyles.body10w5.copyWith(
                          color: AppColors.green2,
                        ),
                        children: [
                          TextSpan(
                            text: type,
                            style: AppTextStyles.body10w5.copyWith(
                              color: AppColors.green,
                            ),
                          )
                        ]),
                  ),
                  Text(
                    price,
                    style: AppTextStyles.body14w6.copyWith(
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          SplashButton(
            onTap: callFunc ?? () {},
            child: Container(
              width: 47.w,
              height: 102.h,
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(15.r),
                ),
              ),
              child: SvgPicture.asset(
                Assets.icons.call,
                width: 18.w,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
