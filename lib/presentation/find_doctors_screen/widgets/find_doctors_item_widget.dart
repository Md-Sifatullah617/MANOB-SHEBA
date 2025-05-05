import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../controller/find_doctors_controller.dart';
import '../models/find_doctors_item_model.dart';

// ignore_for_file: must_be_immutable
class FindDoctorsItemWidget extends StatelessWidget {
  FindDoctorsItemWidget(this.findDoctorsItemModelObj, {super.key});

  FindDoctorsItemModel findDoctorsItemModelObj;

  var controller = Get.find<FindDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.h,
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: findDoctorsItemModelObj.generalOne!.value,
                  height: 32.h,
                  width: 32.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Obx(
          () => Text(
            findDoctorsItemModelObj.generalTwo!.value,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
