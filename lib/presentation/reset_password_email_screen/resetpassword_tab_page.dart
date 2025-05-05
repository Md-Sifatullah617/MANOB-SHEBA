import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../theme/custom_button_style.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart';
import 'controller/reset_password_email_controller.dart';

// ignore_for_file: must_be_immutable
class ResetpasswordTabPage extends StatelessWidget {
  ResetpasswordTabPage({super.key});

  ResetPasswordEmailController controller = Get.put(
    ResetPasswordEmailController(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 24.h),
      child: Column(children: [_buildSendOtpSection()]),
    );
  }

  Widget _buildSendOtpSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: CustomTextFormField(
              controller: controller.emailController,
              hintText: "Lbl_xyz_gmail_com".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(24.h, 16.h, 16.h, 16.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconEmail,
                  height: 22.h,
                  width: 24.h,
                  fit: BoxFit.contain,
                ),
              ),
              prefixConstraints: BoxConstraints(maxHeight: 56.h),
              suffix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.h, 24.h, 16.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconCheck,
                  height: 22.h,
                  width: 16.h,
                  fit: BoxFit.contain,
                ),
              ),
              suffixConstraints: BoxConstraints(maxHeight: 56.h),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 16.h,
              ),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 32.h),
          CustomElevatedButton(
            text: "Lbl_send_otp".tr,
            margin: EdgeInsets.only(right: 6.h),
            onPressed: () {
              onTapSendOtp();
            },
          ),
        ],
      ),
    );
  }

  void onTapSendOtp() {
    Get.toNamed(AppRoutes.resetPasswordVerifyCodeScreen);
  }
}
