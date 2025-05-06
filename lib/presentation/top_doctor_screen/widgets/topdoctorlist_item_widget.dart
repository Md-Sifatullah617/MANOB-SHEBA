import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../controller/top_doctor_controller.dart';
import '../models/topdoctorlist_item_model.dart';

class TopdoctorlistItemWidget extends StatelessWidget {
  final TopdoctorlistItemModel topdoctorlistItemModelObj;

  TopdoctorlistItemWidget(this.topdoctorlistItemModelObj, {super.key});

  var controller = Get.find<TopDoctorController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.h),
      decoration: AppDecoration.neutral100White.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle959,
            height: 110.h,
            width: 110.h,
            radius: BorderRadius.circular(8.h),
          ),
          SizedBox(width: 18.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    topdoctorlistItemModelObj.drmarcus!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 10.h),
                Obx(
                  () => Text(
                    topdoctorlistItemModelObj.chardiologist!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 6.h),
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
                        child: Obx(
                          () => Text(
                            topdoctorlistItemModelObj.fortySeven!.value,
                            style: CustomTextStyles.labelLargeAmber500,
                          ),
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
                        child: Obx(
                          () => Text(
                            topdoctorlistItemModelObj.distance!.value,
                            style: theme.textTheme.labelLarge,
                          ),
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
}
