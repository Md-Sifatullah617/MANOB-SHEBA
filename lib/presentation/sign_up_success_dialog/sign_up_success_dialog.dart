import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/sign_up_success_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpSuccessDialog extends StatelessWidget {
  SignUpSuccessDialog(this.controller, {Key? key}) : super(key: key);

  SignUpSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 36.h),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 26.h),
              Container(
                height: 102.h,
                width: 102.h,
                decoration: AppDecoration.primary100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder50,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkPrimary,
                      height: 30.h,
                      width: 40.h,
                      radius: BorderRadius.circular(3.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42.h),
              Text("lbl_success".tr, style: theme.textTheme.titleLarge),
              SizedBox(height: 6.h),
              Text(
                "msg_your_account_has".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeBluegray400.copyWith(
                  height: 1.50,
                ),
              ),
              SizedBox(height: 20.h),
              CustomElevatedButton(text: "lbl_go_to_home".tr),
            ],
          ),
        ),
      ],
    );
  }
}
