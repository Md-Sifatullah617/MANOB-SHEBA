import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/reset_password_phone_controller.dart';
import 'models/reset_password_phone_model.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordPhonePage extends StatelessWidget {
  ResetPasswordPhonePage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ResetPasswordPhoneController controller = Get.put(
    ResetPasswordPhoneController(ResetPasswordPhoneModel().obs),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Form(
        key: _formKey,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildMobileNumberSection()],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: CustomTextFormField(
              controller: controller.mobileNoController,
              hintText: "Lbl_1234567890".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.phone,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(24.h, 16.h, 16.h, 16.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconCall,
                  height: 22.h,
                  width: 24.h,
                  fit: BoxFit.contain,
                ),
              ),
              prefixConstraints: BoxConstraints(maxHeight: 56.h),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 16.h,
              ),
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
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
              onTapSendotp();
            },
          ),
        ],
      ),
    );
  }

  /// Navigates to the resetPasswordVerifyCodeScreen when the action is triggered.
  onTapSendotp() {
    Get.toNamed(AppRoutes.resetPasswordVerifyCodeScreen);
  }
}
