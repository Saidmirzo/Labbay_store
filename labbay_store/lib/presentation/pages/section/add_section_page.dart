import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';
import 'package:labbay_store/presentation/pages/menu/components/add_menu_textfield.dart';

class AddSectionPage extends StatefulWidget {
  const AddSectionPage({super.key});

  @override
  State<AddSectionPage> createState() => _AddSectionPageState();
}

class _AddSectionPageState extends State<AddSectionPage> {
  late TextEditingController textEditingController = TextEditingController(text: "Burgerlar");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Bo’limlar",
        trailing: SvgPicture.asset(Assets.icons.trash),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          left: 19.w,
          right: 19.w,
          top: 24.h,
          bottom: 100.h,
        ),
        children: [
          AddMenuTextField(
            textEditingController: textEditingController,
            height: 80.h,
            hintText: "hintText",
          ),
        ],
      ),
    );
  }
}
