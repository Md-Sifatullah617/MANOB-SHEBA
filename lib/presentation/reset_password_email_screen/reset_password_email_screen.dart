import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../widgets/app_bar/appbar_leading_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import './reset_password_phone_page/reset_password_phone_page.dart';
import './resetpassword_tab_page.dart';
import 'controller/reset_password_email_controller.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordEmailScreen extends GetWidget<ResetPasswordEmailController> {
  ResetPasswordEmailScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 36.h),
              _buildForgotPasswordSection(),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      ResetpasswordTabPage(),
                      ResetPasswordPhonePage(),
                    ],
                  ),
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
    );
  }

  Widget _buildForgotPasswordSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 14.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_forgot_your_password".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 8.h),
          Text(
            "msg_enter_your_email".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMediumGray500.copyWith(height: 1.50),
          ),
        ],
      ),
    );
  }
}
