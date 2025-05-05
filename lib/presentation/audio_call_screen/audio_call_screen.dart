import 'package:flutter/material.dart';
import 'package:manob_seba/core/app_export.dart';
import 'package:manob_seba/widgets/custom_icon_button.dart';
import 'package:manob_seba/presentation/audio_call_screen/controller/audio_call_controller.dart';
// ignore_for_file: must_be_immutable

class AudioCallScreen extends GetWidget<AudioCallController> {
  const AudioCallScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: 926.v,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAudioCall,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 26.v,
                    ),
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                            left: 4.h,
                          ),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage10,
                                height: 116.h,
                                width: 114.w,
                                radius: BorderRadius.circular(
                                  58.h,
                                ),
                              ),
                              SizedBox(height: 178.v),
                              Text(
                                "lbl_00_05_24".tr,
                                style: CustomTextStyles.titleSmallWhiteA700,
                              ),
                              SizedBox(height: 28.v),
                              Container(
                                width: 206.h,
                                margin: EdgeInsets.only(
                                  right: 4.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomIconButton(
                                      height: 52.adaptSize,
                                      width: 52.adaptSize,
                                      padding: EdgeInsets.all(14.h),
                                      decoration:
                                          IconButtonStyleHelper.fillGray,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgUpload,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 52.adaptSize,
                                      width: 52.adaptSize,
                                      padding: EdgeInsets.all(14.h),
                                      decoration: IconButtonStyleHelper.fillRed,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgCall,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 52.adaptSize,
                                      width: 52.adaptSize,
                                      padding: EdgeInsets.all(14.h),
                                      decoration:
                                          IconButtonStyleHelper.fillGray,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgMenu,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 50.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowUp0,
                                height: 20.v,
                                width: 20.h,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "msg_swipe_back_to_menu".tr,
                                style: CustomTextStyles.titleSmallWhite700,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
