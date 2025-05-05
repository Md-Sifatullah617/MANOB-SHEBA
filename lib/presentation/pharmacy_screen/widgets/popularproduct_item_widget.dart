import 'package:flutter/material.dart';

import '.../../core/app_export.dart';
import '.../../widgets/custom_icon_button.dart';
import '../controller/pharmacy_controller.dart';
import '../models/popularproduct_item_model.dart';

class PopularproductItemWidget extends StatelessWidget {
  PopularproductItemWidget(this.popularproductItemModelObj, {Key? key})
    : super(key: key);

  PopularproductItemModel popularproductItemModelObj;

  var controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116.h,
      padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 6.h),
      decoration: AppDecoration.outlineGray3001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.h),
          CustomImageView(
            imagePath: ImageConstant.imgHealthvitLlys,
            height: 66.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(32.h),
            margin: EdgeInsets.only(left: 16.h, right: 14.h),
          ),
          SizedBox(height: 8.h),
          Obx(
            () => Text(
              popularproductItemModelObj.bodrexherbal!.value,
              style: CustomTextStyles.titleSmallOnPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Obx(
                () => Text(
                  popularproductItemModelObj.measurement!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    popularproductItemModelObj.price!.value,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                ),
                Obx(
                  () => CustomIconButton(
                    height: 18.h,
                    width: 18.h,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.none,
                    child: CustomImageView(
                      imagePath: popularproductItemModelObj.closeOne!.value,
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
