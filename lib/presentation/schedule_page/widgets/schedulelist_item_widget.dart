import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../controller/schedule_controller.dart';
import '../models/schedulelist_item_model.dart';

class ScheduleListItemWidget extends StatelessWidget {
  ScheduleListItemWidget(this.scheduleListItemModelObj, {super.key});

  ScheduleListItemModel scheduleListItemModelObj;

  var controller = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          scheduleListItemModelObj.drmarcus!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Obx(
                        () => Text(
                          scheduleListItemModelObj.chardiologist!.value,
                          style: CustomTextStyles.labelLargeBluegray400,
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: scheduleListItemModelObj.drmarcus1!.value,
                    height: 46.h,
                    width: 44.h,
                    radius: BorderRadius.circular(22.h),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendarBlueGray700,
                  height: 14.h,
                  width: 14.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Obx(
                    () => Text(
                      scheduleListItemModelObj.date!.value,
                      style: CustomTextStyles.labelLargeBluegray700,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgClockBlueGray700,
                  height: 14.h,
                  width: 14.h,
                  margin: EdgeInsets.only(left: 12.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Obx(
                    () => Text(
                      scheduleListItemModelObj.time!.value,
                      style: CustomTextStyles.labelLargeBluegray700,
                    ),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 6.h,
                  margin: EdgeInsets.only(left: 16.h),
                  decoration: BoxDecoration(
                    color: appTheme.green600,
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      scheduleListItemModelObj.confirmed!.value,
                      style: CustomTextStyles.labelLargeBluegray700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                _buildCancelButton(),
                SizedBox(width: 16.h),
                _buildRescheduleButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCancelButton() {
    return Expanded(
      child: CustomElevatedButton(
        height: 46.h,
        text: "lbl_cancel".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleSmallBluegray700,
      ),
    );
  }

  Widget _buildRescheduleButton() {
    return Expanded(
      child: CustomElevatedButton(
        height: 46.h,
        text: "lbl_reschedule".tr,
        buttonStyle: CustomButtonStyles.fillBlue,
        buttonTextStyle: CustomTextStyles.titleSmallPrimary,
      ),
    );
  }
}
