import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/presentation/components/custom_confirmation_text_button.dart';
import 'package:labbay_store/presentation/components/order_cancel_bottom_sheet.dart';

class BookingOrderBottomSheet extends StatelessWidget {
  const BookingOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 300.h,
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 17.h),
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Column(
          children: [
            OrderCancelItem(
              title: 'Kuryerni qidirish',
              ontap: () {},
              leading: SvgPicture.asset(Assets.icons.gps),
            ),
            OrderCancelItem(
              title: 'Kuryerni skanerlash',
              ontap: () {},
              leading: SvgPicture.asset(Assets.icons.scanner),
            ),
            const Spacer(),
            CustomConfirmationTextButton(
              text: 'Qaytish',
              ontap: () => Navigator.pop(context),
              color: AppColors.messageButtonBg2,
              textColor: AppColors.black,
            )
          ],
        ),
      ),
    );
  }
}
