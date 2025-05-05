import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_rating_bar.dart';
import 'controller/drugs_detail_controller.dart';

class DrugsDetailScreen extends GetWidget<DrugsDetailController> {
  const DrugsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 52.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHealthvitLlys162x162,
                    height: 162.h,
                    width: 162.h,
                    radius: BorderRadius.circular(80.h),
                  ),
                  SizedBox(height: 46.h),
                  _buildProductInfo(),
                  SizedBox(height: 46.h),
                  _buildDescriptionSection(),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildActionButtons(),
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
      title: AppbarSubtitleOne(text: "lbl_details".tr),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCart,
          margin: EdgeInsets.only(top: 9.h, right: 23.h, bottom: 15.h),
        ),
      ],
    );
  }

  Widget _buildProductInfo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_obh_combi".tr, style: CustomTextStyles.titleLargeSemiBold),
          SizedBox(height: 10.h),
          Text("lbl_75ml".tr, style: CustomTextStyles.titleMediumGray50016),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_description".tr, style: CustomTextStyles.titleMedium16),
          SizedBox(height: 8.h),
          Container(
            width: 326.h,
            margin: EdgeInsets.only(right: 4.h),
            child: ReadMoreText(
              "msg_obh_combi_is_a".tr,
              trimLines: 3,
              colorClickableText: theme.colorScheme.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle: CustomTextStyles.labelLargeBluegray400.copyWith(
                height: 1.50,
              ),
              lessStyle: CustomTextStyles.labelLargeBluegray400.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      height: 50.h,
      margin: EdgeInsets.only(left: 20.h, right: 14.h, bottom: 28.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 50.h,
            width: 50.h,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillOnErrorContainer,
            onTap: () {
              onTapBtnThumbsupone();
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsUpPrimary50x50,
            ),
          ),
          SizedBox(width: 16.h),
          CustomElevatedButton(
            height: 50.h,
            width: 260.h,
            text: "lbl_add_to_cart".tr,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
            onPressed: () {
              onTapAddtocart();
            },
          ),
        ],
      ),
    );
  }

  void onTapBtnThumbsupone() {
    Get.toNamed(AppRoutes.myCartScreen);
  }

  void onTapAddtocart() {
    Get.toNamed(AppRoutes.myCartScreen);
  }
}
