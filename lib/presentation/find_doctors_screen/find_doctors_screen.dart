import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/find_doctors_controller.dart';
import 'models/find_doctors_item_model.dart';
import 'models/find_doctors_model.dart';
import 'widgets/find_doctors_item_widget.dart';

class FindDoctorsScreen extends GetWidget<FindDoctorsController> {
  const FindDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  _buildSearchSection(),
                  SizedBox(height: 26.h),
                  _buildCategoriesSection(),
                  SizedBox(height: 26.h),
                  _buildRecommendedDoctorsSection(),
                  SizedBox(height: 4.h),
                  _buildRecentDoctorsSection(),
                ],
              ),
            ),
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
      title: AppbarSubtitleOne(text: "lbl_find_doctors".tr),
    );
  }

  Widget _buildSearchSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 14.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_find_a_doctor".tr,
              contentPadding: EdgeInsets.fromLTRB(16.h, 10.h, 12.h, 10.h),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text("lbl_category".tr, style: theme.textTheme.titleMedium),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Obx(
              () => ResponsiveGridListBuilder(
                minItemWidth: 1,
                minItemsPerRow: 4,
                maxItemsPerRow: 4,
                horizontalGridSpacing: 22.h,
                verticalGridSpacing: 22.h,
                builder:
                    (context, items) => ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      children: items,
                    ),
                gridItems: List.generate(
                  controller
                      .findDoctorsModeObj
                      .value
                      .findDoctorsItemList
                      .value
                      .length,
                  (index) {
                    FindDoctorsItemModel model =
                        controller
                            .findDoctorsModeObj
                            .value
                            .findDoctorsItemList
                            .value[index];
                    return FindDoctorsItemWidget(model);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedDoctorsSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_recommended_doctors".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapDr();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 14.h),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse8888x88,
                      height: 88.h,
                      width: 88.h,
                      radius: BorderRadius.circular(44.h),
                    ),
                    SizedBox(width: 24.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_dr_marcus_horizon".tr,
                            style: CustomTextStyles.titleMedium16,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "lbl_cardiologist".tr,
                            style: CustomTextStyles.bodyMediumGray500,
                          ),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(indent: 6.h, endIndent: 6.h),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSignal,
                                      height: 16.h,
                                      width: 16.h,
                                    ),
                                    SizedBox(width: 4.h),
                                    Text(
                                      "lbl_4_7".tr,
                                      style:
                                          CustomTextStyles.labelLargeAmber500,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant
                                              .imgLinkedinErrorcontainer,
                                      height: 16.h,
                                      width: 16.h,
                                    ),
                                    SizedBox(width: 4.h),
                                    Text(
                                      "lbl_800m_away".tr,
                                      style:
                                          CustomTextStyles
                                              .titleSmallErrorContainer,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentDoctorsSection() {
    return Container(
      height: 128.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 14.h, bottom: 68.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_your_recent_doctors".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 18.h),
          Container(
            margin: EdgeInsets.only(right: 4.h),
            width: double.maxFinite,
            child: Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    controller
                        .findDoctorsModeObj
                        .value
                        .doctorsItemList
                        .value
                        .length,
                    (index) {
                      DoctorsItemModel model =
                          controller
                              .findDoctorsModeObj
                              .value
                              .doctorsItemList
                              .value[index];
                      return DoctorsItemWidget(model);
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

  void onTapDr() {
    Get.toNamed(AppRoutes.doctorDetailScreen);
  }
}
