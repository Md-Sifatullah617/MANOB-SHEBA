import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../controller/articles_controller.dart';
import '../models/listcovidninete_item_model.dart';

// ignore_for_file: must_be_immutable
class ListcovidnineteItemWidget extends StatelessWidget {
  ListcovidnineteItemWidget(this.listcovidnineteItemModelObj, {Key? key})
      : super(key: key);

  ListcovidnineteItemModel listcovidnineteItemModelObj;

  var controller = Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154.h,
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 86.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: listcovidnineteItemModelObj.covidnineteen!.value,
                    height: 86.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(8.h),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 14.h,
                  width: 14.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 8.h, right: 6.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            decoration: AppDecoration.background.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder3,
            ),
            child: Obx(
              () => Text(
                listcovidnineteItemModelObj.covidnineteen1!.value,
                textAlign: TextAlign.center,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: 102.h,
            child: Obx(
              () => Text(
                listcovidnineteItemModelObj.comparingthe!.value,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Obx(
                  () => Text(
                    listcovidnineteItemModelObj.jun122021!.value,
                    style: CustomTextStyles.labelMediumGray500,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 2.h,
                    width: 2.h,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray500,
                      borderRadius: BorderRadius.circular(1.h),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Obx(
              () => Text(
                listcovidnineteItemModelObj.time!.value,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

