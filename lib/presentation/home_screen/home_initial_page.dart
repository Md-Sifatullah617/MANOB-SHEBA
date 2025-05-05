import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/home_controller.dart';
import 'models/categorieslist_item_model.dart';
import 'models/doctor_item_model.dart';
import 'models/home_initial_model.dart';
import 'widgets/categorieslist_item_widget.dart';
import 'widgets/doctor_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomeInitialPage extends StatelessWidget {
  HomeInitialPage({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.white,
      child: Column(
        children: [
          SizedBox(height: 26.h),
          SizedBox(width: double.maxFinite, child: _buildAppBar()),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(14.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: CustomSearchView(
                        controller: controller.searchController,
                        hintText: "msg_search_doctor_drugs".tr,
                        contentPadding: EdgeInsets.fromLTRB(
                          16.h,
                          10.h,
                          12.h,
                          10.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    _buildCategoriesList(),
                    SizedBox(height: 14.h),
                    _buildOfferBanner(),
                    SizedBox(height: 26.h),
                    _buildTopDoctors(),
                    SizedBox(height: 4.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 66.h,
      title: AppbarSubtitle(
        text: "msg_find_your_desire".tr,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.only(top: 5.h, right: 23.h, bottom: 36.h),
        ),
      ],
    );
  }

  Widget _buildCategoriesList() {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      width: double.maxFinite,
      child: Obx(
        () => SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 18.h,
            children: List.generate(
              controller
                  .homeInitialModelObj
                  .value
                  .categorieslistItemList
                  .value
                  .length,
              (index) {
                CategorieslistItemModel model =
                    controller
                        .homeInitialModelObj
                        .value
                        .categorieslistItemList
                        .value[index];
                return CategorieslistItemWidget(model);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOfferBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      decoration: AppDecoration.linear.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_early_protection".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumWhiteA700.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(height: 14.h),
                CustomElevatedButton(
                  height: 30.h,
                  width: 98.h,
                  text: "Lbl_learn_more".tr,
                  buttonStyle: CustomButtonStyles.fillWhiteA,
                  buttonTextStyle: CustomTextStyles.labelLargePrimarySemiBold,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130.h,
              width: 138.h,
              margin: EdgeInsets.only(top: 4.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 112.h,
                    width: 112.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56.h),
                      border: Border.all(
                        color: appTheme.whiteA700.withOpacity(0.5),
                        width: 18.h,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img7xm6,
                    height: 130.h,
                    width: 90.h,
                    radius: BorderRadius.circular(10.h),
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 10.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopDoctors() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lbl_top_doctor".tr,
                  style: CustomTextStyles.titleMedium16,
                ),
                GestureDetector(
                  onTap: () {
                    onTapTxtSeeall();
                  },
                  child: Text(
                    "Lbl_see_all".tr,
                    style: CustomTextStyles.titleSmallPrimary_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Obx(
              () => ResponsiveGridListBuilder(
                minItemWidth: 1,
                minItemsPerRow: 2,
                maxItemsPerRow: 2,
                horizontalGridSpacing: 16.h,
                verticalGridSpacing: 16.h,
                builder:
                    (context, items) => ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      children: items,
                    ),
                gridItems: List.generate(
                  controller
                      .homeInitialModelObj
                      .value
                      .doctorItemList
                      .value
                      .length,
                  (index) {
                    DoctorItemModel model =
                        controller
                            .homeInitialModelObj
                            .value
                            .doctorItemList
                            .value[index];
                    return DoctorItemWidget(model);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTapTxtSeeall() {
    Get.toNamed(AppRoutes.topDoctorScreen);
  }
}
