import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/create_new_password_controller.dart';

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreen extends GetWidget<CreateNewPasswordController> {
  CreateNewPasswordScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: Form(
        key: _formKey,
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 34.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_create_new_password".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_create_your_new".tr,
                  style: CustomTextStyles.titleMediumGray500,
                ),
              ),
              SizedBox(height: 24.h),
              _buildPasswordForm(),
              SizedBox(height: 24.h),
              CustomElevatedButton(
                text: "lbl_create_password".tr,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                onPressed: () {
                  onTapCreatepassword();
                },
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(left: 32.h, top: 8.h, bottom: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordForm() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Obx(
              () => CustomTextFormField(
                controller: controller.newpasswordController,
                hintText: "msg_enter_new_password".tr,
                textInputType: TextInputType.visiblePassword,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 16.h, 16.h, 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 22.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                prefixConstraints: BoxConstraints(maxHeight: 56.h),
                suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword.value =
                        !controller.isShowPassword.value;
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 16.h, 24.h, 16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 22.h,
                      width: 24.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(maxHeight: 56.h),
                obscureText: controller.isShowPassword.value,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 16.h,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Obx(
              () => CustomTextFormField(
                controller: controller.confirmpasswordController,
                hintText: "msg_confirm_password".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 16.h, 16.h, 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 22.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                prefixConstraints: BoxConstraints(maxHeight: 56.h),
                suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword1.value =
                        !controller.isShowPassword1.value;
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 16.h, 24.h, 16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 22.h,
                      width: 24.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(maxHeight: 56.h),
                obscureText: controller.isShowPassword1.value,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 16.h,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapCreatepassword() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
