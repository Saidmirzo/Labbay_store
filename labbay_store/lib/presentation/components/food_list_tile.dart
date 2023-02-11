import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          CupertinoSwitch(
            value: widget.isSwitched,
            onChanged: (value) => setState(() {
              widget.isSwitched = value;
            }),
          ),
        ],
      ),
    );
  }
}
