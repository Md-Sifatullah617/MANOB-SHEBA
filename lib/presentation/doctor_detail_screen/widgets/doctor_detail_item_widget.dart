import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../controller/doctor_detail_controller.dart';
import '../models/doctor_detail_item_model.dart';

// ignore_for_file: must_be_immutable
class DoctorDetailItemWidget extends StatelessWidget {
  DoctorDetailItemWidget(this.doctorDetailItemModelObj, {super.key});

  DoctorDetailItemModel doctorDetailItemModelObj;

  var controller = Get.find<DoctorDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.h),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Obx(
        () => Text(
          doctorDetailItemModelObj.time!.value,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall,
        ),
      ),
    );
  }
}
