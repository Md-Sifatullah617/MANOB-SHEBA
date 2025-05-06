import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(14.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildLogoSection(), SizedBox(height: 4.h)],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorWhiteA700,
            height: 130.h,
            width: 116.h,
          ),
          SizedBox(height: 14.h),
          Text("lbl_helthio".tr, style: theme.textTheme.displayMedium),
        ],
      ),
    );
  }
}
