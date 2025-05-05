import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../controller/articles_controller.dart';
import '../models/listthetwentyfi_item_model.dart';

// ignore_for_file: must_be_immutable
class ListthetwentyfiItemWidget extends StatelessWidget {
  ListthetwentyfiItemWidget(this.listthetwentyfiItemModelObj, {Key? key})
      : super(key: key);

  ListthetwentyfiItemModel listthetwentyfiItemModelObj;

  var controller = Get.find<ArticlesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.all(4.h),
        decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
                imagePath: listthetwentyfiItemModelObj.image.value,
                height: 50.h,
                width: 50.h,
                radius: BorderRadius.circular(1.h),
                alignment: Alignment.center,
            ),
            SizedBox(width: 12.h),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() => Text(
                              listthetwentyfiItemModelObj.thetwentyfive.value,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                                  height: 1.50
                              )
                          )),
                          SizedBox(height: 1.50),
                         Obx(()=>Text(
                             listthetwentyfiItemModelObj.jun182021l.value,
                           style: CustomTextStyles.labelMediumGray500
                         )),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 2.h,
                                width: 2.h,
                                margin: EdgeInsets.only(top: 2.h),
                                decoration: BoxDecoration(
                                    color: appTheme.gray500,
                                    borderRadius: BorderRadius.circular(1.h)
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Obx(
                                  ()=>Text(
                                listthetwentyfiItemModelObj.time.value,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ]))),
            SizedBox(width: 12.h),
            CustomImageView(
                imagePath: ImageConstant.imgBookmarkPrimary,
                height: 14.h,
                width: 14.h,
                margin: EdgeInsets.only(top: 6.h)),
          ],
        ));
  }
}

