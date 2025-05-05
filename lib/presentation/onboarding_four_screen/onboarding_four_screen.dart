import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/onboarding_four_controller.dart';

class OnboardingFourScreen extends GetWidget<OnboardingFourController> {
  const OnboardingFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 176.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_buildThumbsUpSection()],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildLoginButtonsSection(),
    );
  }

  Widget _buildThumbsUpSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 44.h),
      child: Column(
        children: [
          SizedBox(
            width: 88.h,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 66.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                ),
                SizedBox(height: 4.h),
                Text(
                  "lbl_helthio".tr,
                  style: CustomTextStyles.headlineSmallPrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 38.h),
          Text(
            "msg_let_s_get_started".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 6.h),
          Text(
            "msg_login_to_enjoy_the".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumGray600.copyWith(height: 1.50),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButtonsSection() {
    return Container(
      height: 128.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 14.h, bottom: 60.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomElevatedButton(
            text: "lbl_login".tr,
            margin: EdgeInsets.only(right: 4.h),
            onPressed: () {
              onTapLogin();
            },
          ),
          SizedBox(height: 16.h),
          CustomOutlinedButton(
            text: "lbl_sign_up".tr,
            margin: EdgeInsets.only(right: 4.h),
            buttonStyle: CustomButtonStyles.outlinePrimary,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
            onPressed: () {
              onTapSignup();
            },
          ),
        ],
      ),
    );
  }

  void onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  void onTapSignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
