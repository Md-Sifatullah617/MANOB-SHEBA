import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:readmore/readmore.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/doctor_detail_controller.dart';
import 'models/doctor_detail_item_model.dart';
import 'widgets/doctor_detail_item_widget.dart';

class DoctorDetailScreen extends GetWidget<DoctorDetailController> {
  const DoctorDetailScreen({super.key});

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
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 22.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDoctorInfo(),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_about_dr".tr,
                      style: CustomTextStyles.titleMedium16,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 304.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: ReadMoreText(
                      "msg_lorem_ipsum_dolor".tr,
                      trimLines: 2,
                      colorClickableText: theme.colorScheme.primary,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "lbl_read_more".tr,
                      moreStyle: CustomTextStyles.bodySmallGray600.copyWith(
                        height: 1.50,
                      ),
                      lessStyle: CustomTextStyles.bodySmallGray600.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  _buildDateTimeSection(),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
            bottomNavigationBar: _buildActionButtons(),
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
      title: AppbarSubtitleOne(text: "lbl_details".tr),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconChevronLeftOnprimary,
          margin: EdgeInsets.only(top: 8.h, right: 23.h, bottom: 16.h),
        ),
      ],
    );
  }

  Widget _buildDoctorInfo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle959,
            height: 110.h,
            width: 110.h,
            borderRadius: BorderRadius.circular(8.h),
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
                Text(
                  "lbl_cardiologist".tr,
                  style: theme.textTheme.labelLarge,
                ),
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
                          "lbl_4_7".tr,
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
                          "lbl_800m_away".tr,
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

  Widget _buildDateTimeSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => Container(
                width: 326.h,
                margin: EdgeInsets.only(right: 4.h),
                child: EasyDateTimeLine(
                  initialDate: controller.selectedDatesFromCalendar.value,
                  locale: 'en_US',
                  headerProps: EasyHeaderProps(
                    selectedHeaderFormat: SelectedDateFormat.fullDateDMY,
                    monthPickerType: MonthPickerType.switcher,
                    showHeader: false,
                  ),
                  dayProps: EasyDayProps(width: 46.h, height: 64.h),
                  onDateChange: (selectedDate) {
                    controller.selectedDatesFromCalendar.value = selectedDate;
                  },
                  itemBuilder: (
                    context,
                    dayNumber,
                    dayName,
                    monthName,
                    fullDate,
                    isSelected,
                  ) {
                    return isSelected
                        ? Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.h,
                              vertical: 8.h,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(14.h),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 6.h),
                                Text(
                                  dayName.toString(),
                                  style: CustomTextStyles.labelMediumWhiteA700
                                      .copyWith(color: appTheme.whiteA700),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  dayNumber.toString(),
                                  style: CustomTextStyles.titleMediumWhiteA700_1
                                      .copyWith(color: appTheme.whiteA700),
                                ),
                              ],
                            ),
                          )
                        : Container(
                            padding: EdgeInsets.all(10.h),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(14.h),
                              border: Border.all(
                                color: appTheme.gray300,
                                width: 1.h,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.h),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    dayName.toString(),
                                    style: CustomTextStyles.labelMediumGray500
                                        .copyWith(color: appTheme.gray500),
                                  ),
                                ),
                                Text(
                                  dayNumber.toString(),
                                  style: theme.textTheme.titleMedium1.copyWith(
                                    color: theme.colorScheme.onPrimary,
                                  ),
                                ),
                              ],
                            ),
                          );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 32.h),
          SizedBox(width: double.maxFinite, child: Divider(endIndent: 4.h)),
          SizedBox(height: 32.h),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Obx(
              () => ResponsiveGridListBuilder(
                minItemWidth: 1,
                minItemsPerRow: 3,
                maxItemsPerRow: 3,
                horizontalGridSpacing: 8.h,
                verticalGridSpacing: 8.h,
                builder: (
                  context,
                  items,
                ) => ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  children: items,
                ),
                gridItems: List.generate(
                  controller
                      .doctorDetailModeObj
                      .value
                      .doctorDetailItemList
                      .value
                      .length,
                  (index) {
                    DoctorDetailItemModel model =
                        controller.doctorDetailModeObj.value.doctorDetailItemList
                            .value[index];
                    return DoctorDetailItemWidget(model);
                  },
                ),
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
            child: CustomImageView(imagePath: ImageConstant.imgSettingsPrimary),
          ),
          SizedBox(width: 16.h),
          CustomElevatedButton(
            height: 50.h,
            width: 260.h,
            text: "lbl_book_apointment".tr,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
            onPressed: () {
              onTapBookapointment();
            },
          ),
        ],
      ),
    );
  }

  /// Navigates to the bookingDoctorScreen when the action is triggered.
  onTapBookapointment() {
    Get.toNamed(AppRoutes.bookingDoctorScreen);
  }
}