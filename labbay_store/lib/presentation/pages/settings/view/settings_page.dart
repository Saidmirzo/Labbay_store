import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/app_text_styles.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';
import 'package:labbay_store/presentation/components/custom_switch.dart';

import '../components/setting_item.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgraund,
      appBar: CustomAppBar(
        title: 'Profil va sozlamalar',
        leading: SvgPicture.asset(Assets.icons.arrowLeft2),
        trailing: SvgPicture.asset(Assets.icons.logout),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.w).copyWith(bottom: 105.h),
        children: [
          Padding(
            padding: EdgeInsets.only(top: 27.h, bottom: 32.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(Assets.images.user2),
                      radius: 38.r,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 28.h,
                        width: 28.h,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.galleryAddBg),
                        child: SvgPicture.asset(
                          Assets.icons.galleryAdd,
                          height: 16.h,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Les Ailes',
                      style: AppTextStyles.body26w8.copyWith(
                        color: AppColors.buttonColor,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      '177, Amir Temur ko’chasi',
                      style: AppTextStyles.body14w5,
                    )
                  ],
                )
              ],
            ),
          ),
          SettingsItem(
            title: 'Ish holati',
            iconPath: Assets.icons.timer,
            traling: CustomSwitch(isActive: false),
            onTap: () {},
          ),
          SettingsItem(
            title: 'Telefon raqam',
            iconPath: Assets.icons.callDark,
            subTitle: '+998(33) 510-95-95',
            onTap: () {},
          ),
          SettingsItem(
            title: 'Kafe nomi',
            iconPath: Assets.icons.shop,
            subTitle: 'Les Ailes',
            onTap: () {},
          ),
          SettingsItem(
            title: 'Hisobotlar',
            iconPath: Assets.icons.presention,
            onTap: () {},
          ),
          SettingsItem(
            title: 'Buyurtmalar tarixi',
            iconPath: Assets.icons.clock,
            onTap: () {},
          ),
          SettingsItem(
            title: 'Bo’limlar',
            iconPath: Assets.icons.sections,
            onTap: () {},
          ),
          SettingsItem(
            title: 'Til o’zgartirish',
            iconPath: Assets.icons.translateDark,
            onTap: () {},
          ),
          SettingsItem(
            title: 'Qo’llab quvvatlash',
            iconPath: Assets.icons.headphone,
            onTap: () {},
          ),
          SettingsItem(
            title: 'Servis haqida',
            iconPath: Assets.icons.lifebuoy,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
