import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import '../controller/reset_password_verify_code_controller.dart';

class ResetPasswordVerifyCodeScreen
    extends GetWidget<ResetPasswordVerifyCodeController> {
  const ResetPasswordVerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 34.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "msg_enter_verification".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              width: 272.h,
              margin: EdgeInsets.only(left: 8.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_enter_code_that2".tr,
                      style: CustomTextStyles.titleMediumGray500Medium,
                    ),
                    TextSpan(
                      text: "lbl_08521880".tr,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 28.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 4.h),
              child: Obx(
                () => CustomPinCodeTextField(
                  context: Get.context!,
                  controller: controller.otpController.value,
                  onChanged: (value) {},
                ),
              ),
            ),
            SizedBox(height: 40.h),
            CustomElevatedButton(
              text: "lbl_verify".tr,
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              onPressed: () {
                onTapVerify();
              },
            ),
            SizedBox(height: 24.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 68.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_didn_t_receive_the".tr,
                    style: CustomTextStyles.bodyMediumGray600,
                  ),
                  SizedBox(width: 4.h),
                  Text(
                    "lbl_resend".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(left: 32.h, top: 8.h, bottom: 16.h),
      ),
    );
  }

  void onTapVerify() {
    Get.toNamed(AppRoutes.createNewPasswordScreen);
  }
}
