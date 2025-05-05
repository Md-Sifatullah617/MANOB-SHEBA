import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../controller/find_doctors_controller.dart';
import '../models/doctors_item_model.dart';

// ignore_for_file: must_be_immutable
class DoctorsItemWidget extends StatelessWidget {
  DoctorsItemWidget(this.doctorsItemModelObj, {Key? key}) : super(key: key);

  DoctorsItemModel doctorsItemModelObj;

  var controller = Get.find<FindDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: doctorsItemModelObj.drmarcusOne!.value,
              height: 64.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(32.h),
            ),
          ),
          SizedBox(height: 8.h),
          Obx(
            () => Text(
              doctorsItemModelObj.drmarcus!.value,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargeErrorContainer,
            ),
          ),
        ],
      ),
    );
  }
}
