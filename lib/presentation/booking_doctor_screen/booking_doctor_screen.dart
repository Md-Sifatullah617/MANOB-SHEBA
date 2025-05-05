import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/booking_doctor_controller.dart';

class BookingDoctorScreen extends GetWidget<BookingDoctorController> {
  const BookingDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 22.h),
            child: Column(
              children: [
                _buildDoctorInformation(),
                SizedBox(height: 38.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 4.h),
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 4.h),
                        child: _buildReasonSection(
                          reason: "Lbl_date".tr,
                          changeOne: "Lbl_change".tr,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildReasonDetail(
                          clockOne: ImageConstant.imgCalendar,
                          chestpain: "msg_wednesday_jun_23".tr,
                        ),
                      ),
                      SizedBox(height: 14.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(endIndent: 4.h),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 4.h),
                        child: _buildReasonSection(
                          reason: "Lbl_reason".tr,
                          changeOne: "Lbl_change".tr,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildReasonDetail(
                          clockOne: ImageConstant.imgClock,
                          chestpain: "Lbl_chest_pain".tr,
                        ),
                      ),
                      SizedBox(height: 14.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(endIndent: 4.h),
                      ),
                      SizedBox(height: 18.h),
                      Text(
                        "Lbl_payment_detail".tr,
                        style: CustomTextStyles.titleMedium16,
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 4.h),
                        child: _buildTotalAmount(
                          total: "Lbl_consultation".tr,
                          price: "Lbl_60_00".tr,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 4.h),
                        child: _buildReasonSection(
                          reason: "Lbl_admin_fee".tr,
                          changeOne: "Lbl_01_00".tr,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 4.h),
                        child: _buildReasonSection(
                          reason: "msg_additional_discount".tr,
                          changeOne: "Lbl".tr,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 4.h),
                        child: _buildTotalAmount(
                          total: "Lbl_total".tr,
                          price: "Lbl_61_00".tr,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(endIndent: 12.h),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Lbl_payment_method".tr,
                        style: CustomTextStyles.titleMedium16,
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 4.h),
                        child: _buildReasonSection(
                          reason: "Lbl_visa".tr,
                          changeOne: "Lbl_change".tr,
                        ),
                      ),
                      SizedBox(height: 4.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildCheckoutSection(),
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
      title: AppbarSubtitleOne(text: "Lbl_appointment".tr),
    );
  }

  Widget _buildDoctorInformation() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle959,
            height: 110.h,
            width: 110.h,
            radius: BorderRadius.circular(8.h),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_dr_marcus_horizon".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 8.h),
                Text("Lbl_cardiologist".tr, style: theme.textTheme.labelLarge),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.h,
                        width: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "Lbl_4_7".tr,
                          style: CustomTextStyles.labelLargeAmber500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 12.h,
                        width: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Lbl_800m_away".tr,
                          style: theme.textTheme.labelLarge,
                        ),
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

  Widget _buildCheckoutSection() {
    return Container(
      height: 50.h,
      margin: EdgeInsets.only(left: 20.h, right: 24.h, bottom: 26.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lbl_total".tr, style: theme.textTheme.titleSmall),
                SizedBox(height: 2.h),
                Text("Lbl_61_002".tr, style: theme.textTheme.titleMedium),
              ],
            ),
          ),
          CustomElevatedButton(
            height: 50.h,
            width: 192.h,
            text: "Lbl_checkout".tr,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
          ),
        ],
      ),
    );
  }

  Widget _buildTotalAmount({required String total, required String price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          total,
          style: CustomTextStyles.titleSmallOnPrimary.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleSmallPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }

  Widget _buildReasonSection({
    required String reason,
    required String changeOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          reason,
          style: CustomTextStyles.titleMedium16.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            changeOne,
            style: CustomTextStyles.titleSmallPrimary_1.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReasonDetail({
    required String clockOne,
    required String chestpain,
  }) {
    return Row(
      children: [
        CustomImageView(imagePath: clockOne, height: 36.h, width: 36.h),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 14.h, bottom: 6.h),
            child: Text(
              chestpain,
              style: CustomTextStyles.titleSmallOnPrimary.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
