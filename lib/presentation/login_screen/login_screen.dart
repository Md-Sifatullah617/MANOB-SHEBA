import 'package:flutter/material.dart';

import '../../core/utils/validation_functions.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../domain/googleauth/google_auth_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/login_controller.dart';

class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 30.h),
          child: Column(
            children: [
              _buildFormSection(),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    onTapTxtForgotpassword();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: Text(
                      "msg_forgot_password".tr,
                      style: CustomTextStyles.titleSmallPrimary1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              _buildLoginButton(),
              SizedBox(height: 24.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 56.h),
                child: Row(
                  children: [
                    Text(
                      "msg_don_t_have_an_account".tr,
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                    GestureDetector(
                      onTap: () {
                        onTapTxtSignup();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_sign_up".tr,
                          style: CustomTextStyles.titleSmallPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.h),
              _buildOrDivider(),
              SizedBox(height: 28.h),
              _buildSocialSignIn(),
              SizedBox(height: 4.h),
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
      title: AppbarSubtitleTwo(text: "lbl_login".tr),
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_enter_your_email".tr,
        textInputAction: TextInputAction.done,
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

  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Obx(
        () => CustomTextFormField(
          controller: controller.passwordController,
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

  Widget _buildFormSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [_buildEmail(), SizedBox(height: 16.h), _buildPassword()],
      ),
    );
  }

  Widget _buildLoginButton() {
    return CustomElevatedButton(
      text: "lbl_login".tr,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
    );
  }

  Widget _buildOrDivider() {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Divider()),
          SizedBox(width: 14.h),
          Text("lbl_or".tr, style: theme.textTheme.bodyLarge),
          SizedBox(width: 14.h),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _buildGoogleSignInButton() {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_google".tr,
      margin: EdgeInsets.only(right: 4.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 20.h,
          width: 20.h,
          fit: BoxFit.contain,
        ),
      ),
      onPressed: () {
        onTapGoogleSignInButton();
      },
    );
  }

  Widget _buildAppleSignInButton() {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_apple".tr,
      margin: EdgeInsets.only(right: 4.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgVector,
          height: 18.h,
          width: 16.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildFacebookSignInButton() {
    return CustomOutlinedButton(
      text: "msg_sign_in_with_facebook".tr,
      margin: EdgeInsets.only(right: 4.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebookIcon,
          height: 18.h,
          width: 16.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildSocialSignIn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          _buildGoogleSignInButton(),
          SizedBox(height: 16.h),
          _buildAppleSignInButton(),
          SizedBox(height: 16.h),
          _buildFacebookSignInButton(),
        ],
      ),
    );
  }

  void onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.resetPasswordEmailScreen);
  }

  void onTapTxtSignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  void onTapGoogleSignInButton() async {
    await GoogleAuthHelper()
        .googleSignInProcess()
        .then((googleUser) {
          if (googleUser != null) {
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        })
        .catchError((onError) {
          Get.snackbar('Error', onError.toString());
        });
  }

  void onTapFacebookSignInButton() async {
    await FacebookAuthHelper()
        .facebookSignInProcess()
        .then((facebookUser) {})
        .catchError((onError) {
          Get.snackbar('Error', onError.toString());
        });
  }
}
