import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../controller/my_cart_controller.dart';
import '../models/durgs_item_model.dart';
import 'widgets/durgs_item_widget.dart';

class MyCartScreen extends GetWidget<MyCartController> {
  const MyCartScreen({super.key});

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
              padding: EdgeInsets.symmetric(vertical: 14.h),
              child: Column(
                children: [
                  _buildProductList(),
                  SizedBox(height: 34.h),
                  _buildPaymentDetails(),
                  SizedBox(height: 18.h),
                  _buildPaymentMethod(),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
            _buildCheckoutSection(),
          ],
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
      title: AppbarSubtitleOne(text: "lbl_my_cart".tr),
    );
  }

  Widget _buildProductList() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 14.h),
      child: Column(
        children: [
          Obx(
            () => ListView.separated(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.h);
              },
              itemCount:
                  controller.myCartModelObj.value.durgsItemList.value.length,
              itemBuilder: (context, index) {
                DurgsItemModel model =
                    controller.myCartModelObj.value.durgsItemList.value[index];
                return DurgsItemWidget(model);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentDetails() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_payment_detail".tr,
              style: CustomTextStyles.titleMedium16,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: _buildTaxesSection(
              taxes: "lbl_subtotal".tr,
              price: "lbl_25_98".tr,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: _buildTaxesSection(
              taxes: "lbl_taxes".tr,
              price: "lbl_1_00".tr,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaxesSection({required String taxes, required String price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          taxes,
          style: CustomTextStyles.bodyMediumBluegray700.copyWith(
            color: appTheme.blueGray700,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 6.h),
          child: Text(
            price,
            style: CustomTextStyles.bodyMediumBluegray700.copyWith(
              color: appTheme.blueGray700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentMethod() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_payment_method".tr, style: CustomTextStyles.titleMedium16),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_visa".tr,
                    style: CustomTextStyles.titleMediumInterPrimaryContainer,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_change".tr,
                    style: CustomTextStyles.labelLargePrimary,
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
      margin: EdgeInsets.only(left: 20.h, right: 14.h, bottom: 26.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("lbl_total".tr, style: theme.textTheme.titleSmall),
                SizedBox(height: 2.h),
                Text("lbl_26_982".tr, style: theme.textTheme.titleMedium),
              ],
            ),
          ),
          CustomElevatedButton(
            height: 50.h,
            width: 192.h,
            text: "lbl_checkout".tr,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
            onPressed: () {
              onTapCheckout();
            },
          ),
        ],
      ),
    );
  }

  void onTapCheckout() {
    Get.toNamed(AppRoutes.findDoctorsScreen);
  }
}
