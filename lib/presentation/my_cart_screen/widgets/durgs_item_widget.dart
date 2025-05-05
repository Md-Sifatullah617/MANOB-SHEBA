import 'package:flutter/material.dart';

import '.../../core/app_export.dart';
import '../controller/my_cart_controller.dart';
import '../models/durgs_item_model.dart';

// ignore_for_file: must_be_immutable
class DurgsItemWidget extends StatelessWidget {
  DurgsItemWidget(this.durgsItemModelObj, {super.key});

  DurgsItemModel durgsItemModelObj;

  var controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: durgsItemModelObj.obhCombiOne!.value,
                  height: 50.h,
                  width: 50.h,
                  radius: BorderRadius.circular(24.h),
                  margin: EdgeInsets.only(left: 26.h),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          durgsItemModelObj.obhcombi!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Obx(
                        () => Text(
                          durgsItemModelObj.measurement!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUpGray500,
                height: 18.h,
                width: 18.h,
              ),
            ],
          ),
          SizedBox(height: 24.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 18.h,
                  width: 18.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Obx(
                    () => Text(
                      durgsItemModelObj.one!.value,
                      style: CustomTextStyles.titleMedium16,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 18.h,
                  width: 18.h,
                  margin: EdgeInsets.only(left: 12.h),
                ),
              ],
            ),
          ),
          Obx(
            () => Text(
              durgsItemModelObj.price!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
