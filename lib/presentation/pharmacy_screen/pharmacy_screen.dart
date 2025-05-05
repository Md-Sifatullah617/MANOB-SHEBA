import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import '../controller/pharmacy_controller.dart';
import '../models/popularproduct_item_model.dart';
import '../widgets/popularproduct_item_widget.dart';

class PharmacyScreen extends GetWidget<PharmacyController> {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 14.h),
            child: Column(
              children: [
                _buildSearchSection(),
                SizedBox(height: 26.h),
                _buildPopularProductsList(),
                SizedBox(height: 26.h),
                _buildProductsOnSaleList(),
                SizedBox(height: 4.h),
              ],
            ),
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
      title: AppbarSubtitleOne(text: "lbl_pharmacy".tr),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCart,
          margin: EdgeInsets.only(top: 9.h, right: 23.h, bottom: 15.h),
        ),
      ],
    );
  }

  Widget _buildSearchSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 14.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h, right: 8.h),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "msg_search_drugs_category".tr,
              contentPadding: EdgeInsets.fromLTRB(16.h, 10.h, 12.h, 10.h),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularProductsList() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h, right: 14.h),
                child: _buildProductsOnSaleHeader(
                  productsOnSale: "lbl_popular_product".tr,
                  seeAllOne: "lbl_see_all".tr,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.only(left: 20.h),
            child: Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 10.h,
                  children: List.generate(
                    controller
                        .pharmacyModelObj
                        .value
                        .popularproductItemList
                        .value
                        .length,
                    (index) {
                      PopularproductItemModel model =
                          controller
                              .pharmacyModelObj
                              .value
                              .popularproductItemList
                              .value[index];
                      return PopularproductItemWidget(model);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsOnSaleList() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h, right: 14.h),
                child: _buildProductsOnSaleHeader(
                  productsOnSale: "lbl_product_on_sale".tr,
                  seeAllOne: "lbl_see_all".tr,
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            margin: EdgeInsets.only(left: 20.h),
            child: Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 10.h,
                  children: List.generate(
                    controller
                        .pharmacyModelObj
                        .value
                        .popularproductItemList
                        .value
                        .length,
                    (index) {
                      PopularproductItemModel model =
                          controller
                              .pharmacyModelObj
                              .value
                              .popularproductItemList
                              .value[index];
                      return PopularproductItemWidget(model);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsOnSaleHeader({
    required String productsOnSale,
    required String seeAllOne,
  }) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productsOnSale,
                style: CustomTextStyles.titleMedium16.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Text(
                    seeAllOne,
                    style: CustomTextStyles.labelLargePrimary.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
