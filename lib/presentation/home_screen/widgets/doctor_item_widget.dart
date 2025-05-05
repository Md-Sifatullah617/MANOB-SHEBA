import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/doctor_item_model.dart';

// ignore_for_file: must_be_immutable
class DoctorItemWidget extends StatelessWidget {
  DoctorItemWidget(this.doctorItemModelObj, {super.key});

  DoctorItemModel doctorItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 6.h),
      decoration: AppDecoration.neutral100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 16.h,
                  width: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      doctorItemModelObj.fortySeven!.value,
                      style: CustomTextStyles.labelLargeAmber500SemiBold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse88,
            height: 70.h,
            width: 70.h,
            radius: BorderRadius.circular(34.h),
          ),
          SizedBox(height: 6.h),
          Obx(
            () => Text(
              doctorItemModelObj.drmarcus!.value,
              style: CustomTextStyles.titleMediumErrorContainer,
            ),
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Text(
                doctorItemModelObj.cardiologist!.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedin,
                  height: 16.h,
                  width: 16.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 2.h),
                    child: Obx(
                      () => Text(
                        doctorItemModelObj.distance!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
