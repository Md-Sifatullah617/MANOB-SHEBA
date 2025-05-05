import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/categorieslist_item_model.dart';

// ignore_for_file: must_be_immutable

class CategorieslistItemWidget extends StatelessWidget {
  CategorieslistItemWidget(this.categorieslistItemModelObj, {super.key});

  CategorieslistItemModel categorieslistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76.h,
      child: Column(
        children: [
          Container(
            height: 56.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            decoration: AppDecoration.primary50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: categorieslistItemModelObj.ambulanceOne!.value,
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
              categorieslistItemModelObj.ambulanceTwo!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
