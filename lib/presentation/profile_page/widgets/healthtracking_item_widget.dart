import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../controller/profile_controller.dart';
import '../models/healthtracking_item_model.dart';

// ignore_for_file: must_be_immutable
class HealthtrackingItemWidget extends StatelessWidget {
  HealthtrackingItemWidget(this.healthtrackingItemModelObj, {Key? key})
    : super(key: key);

  HealthtrackingItemModel healthtrackingItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: healthtrackingItemModelObj.heartRateOne!.value,
              height: 32.h,
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 14.h),
            ),
          ),
          SizedBox(height: 4.h),
          Obx(
            () => Text(
              healthtrackingItemModelObj.heartrate!.value,
              style: CustomTextStyles.lableMediumBlue50,
            ),
          ),
          SizedBox(height: 8.h),
          Obx(
            () => Text(
              healthtrackingItemModelObj.bpm!.value,
              style: CustomTextStyles.titleMediumWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
