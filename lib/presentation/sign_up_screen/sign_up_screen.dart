import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/sign_up_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: Form(
        key: _formKey,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 30.h),
          child: Column(
            children: [
              _buildFormSection(),
              SizedBox(height: 26.h),
              _buildSignUpButton(),
              SizedBox(height: 26.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 52.h),
                child: Row(
                  children: [
                    Text(
                      "msg_already_have_an".tr,
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                    GestureDetector(
                      onTap: () {
                        onTapTxtLogin();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_log_in".tr,
                          style: CustomTextStyles.titleSmallPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
      centerTitle: true,
      title: AppbarSubtitleTwo(text: "lbl_sign_up".tr),
    );
  }

  Widget _buildFormSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildNameInput(),
          SizedBox(height: 16.h),
          _buildEmailInput(),
          SizedBox(height: 16.h),
          _buildPasswordInput(),
          SizedBox(height: 16.h),
          Obx(
            () => CustomCheckboxButton(
              text: "msg_i_agree_to_the_medidoc".tr,
              isExpandedText: true,
              value: controller.checkbox.value,
              onChange: (value) {
                controller.checkbox.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
    );
  }

  void onTapTxtLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  Widget _buildNameInput() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomTextFormField(
        controller: controller.nameInputController,
        hintText: "lbl_enter_your_name".tr,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(24.h, 16.h, 16.h, 16.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 22.h,
            width: 24.h,
            fit: BoxFit.contain,
          ),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 56.h),
        contentPadding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.h),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  Widget _buildEmailInput() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomTextFormField(
        controller: controller.emailInputController,
        hintText: "msg_enter_your_email".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(24.h, 16.h, 16.h, 16.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 22.h,
            width: 24.h,
            fit: BoxFit.contain,
          ),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 56.h),
        contentPadding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.h),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPasswordInput() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordInputController,
          hintText: "msg_enter_your_password".tr,
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
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        ),
      ),
    );
  }
}
