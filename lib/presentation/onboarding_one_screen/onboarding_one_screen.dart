import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/onboarding_one_controller.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            colors: [
              theme.colorScheme.secondaryContainer,
              theme.colorScheme.onError,
            ],
          ),
        ),
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 20.h,
                                top: 50.h,
                                right: 14.h,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 12.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img7xm1,
                                    height: 468.h,
                                    width: 310.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        _buildContentSection(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContentSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 30.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL64,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_consult_only_with".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge!.copyWith(height: 1.50),
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 8.h,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.blue50,
                      dotHeight: 8.h,
                      dotWidth: 8.h,
                    ),
                  ),
                ),
                SizedBox(height: 54.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          onTapTxtSkip();
                        },
                        child: Text(
                          "lbl_skip".tr,
                          style: CustomTextStyles.titleSmallPrimary_1,
                        ),
                      ),
                      CustomElevatedButton(
                        width: 144.h,
                        text: "lbl_next".tr,
                        onPressed: () {
                          onTapNext();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapTxtSkip() {
    Get.toNamed(AppRoutes.onboardingFourScreen);
  }

  void onTapNext() {
    Get.toNamed(AppRoutes.onboardingTwoScreen);
  }
}
