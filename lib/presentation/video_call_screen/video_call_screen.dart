import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../widgets/custom_icon_button.dart';
import 'controller/video_call_controller.dart';

class VideoCallScreen extends GetWidget<VideoCallController> {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: BoxDecoration(
          color: appTheme.whiteA700,
          image: DecorationImage(
            image: AssetImage(ImageConstant.imgVideoCall),
            fit: BoxFit.fill,
          ),
        ),
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 14.h,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: 112.h,
                        width: 74.h,
                        radius: BorderRadius.circular(14.h),
                        alignment: Alignment.centerRight,
                      ),
                      Spacer(),
                      Text(
                        "msg_dr_marcus_horizon".tr,
                        style: CustomTextStyles.titleMediumWhiteA700,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "lbl_00_05_24".tr,
                        style: CustomTextStyles.titleSmallWhiteA700,
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 64.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIconButton(
                              height: 52.h,
                              width: 52.h,
                              padding: EdgeInsets.all(14.h),
                              decoration: IconButtonStyleHelper.fillRed,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUpload,
                              ),
                            ),
                            CustomIconButton(
                              height: 52.h,
                              width: 52.h,
                              padding: EdgeInsets.all(14.h),
                              decoration: IconButtonStyleHelper.fillGrayTL26,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCall,
                              ),
                            ),
                            CustomIconButton(
                              height: 52.h,
                              width: 52.h,
                              padding: EdgeInsets.all(14.h),
                              decoration: IconButtonStyleHelper.fillGray,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgMenu,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowUp,
                        height: 20.h,
                        width: 20.h,
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "msg_swipe_back_to_menu".tr,
                        style: CustomTextStyles.titleSmallWhiteA700,
                      ),
                      SizedBox(height: 6.h),
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
}
