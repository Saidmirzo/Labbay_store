import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:labbay_store/config/constants/app_colors.dart';
import 'package:labbay_store/config/constants/assets.dart';
import 'package:labbay_store/presentation/components/custom_appbar.dart';
import 'package:labbay_store/presentation/components/custom_list_tile.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  static const LatLng sourceLocation = LatLng(40.366586, 71.778596);
  // static const LatLng destination = LatLng(40.366586, 71.778596);
  static const _initialCameraPosition = CameraPosition(
    target: sourceLocation,
    zoom: 16,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppBar(
        leadingFunc: () => Navigator.pop(context),
        leading: SvgPicture.asset(Assets.icons.arrowLeft2),
        title: "Bobur Yuldashev",
      ),
      body: Stack(
        children: [
          const GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _initialCameraPosition,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: CustomListTile(
              avatar: Assets.images.user1,
              username: "Bobur Yuldashev",
              address: "177, Amir Temur ko'chasi",
              type: "Yetkazib berish",
              price: "126 000 UZS",
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomListTile(
              username: "Farhod",
              address: "Kuryer",
              type: "Skuter",
              isCourier: true,
              margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 104.h),
            ),
          ),
        ],
      ),
    );
  }
}
