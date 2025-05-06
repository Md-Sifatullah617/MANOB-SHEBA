import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../controller/top_doctor_controller.dart';
import '../models/topdoctorlist_item_model.dart';
import 'widgets/topdoctorlist_item_widget.dart';

class TopDoctorScreen extends GetWidget<TopDoctorController> {
  const TopDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.fromLTRB(20.h, 14.h, 14.h, 4.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [_buildTopDoctorList()],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(left: 32.h, top: 8.h, bottom: 16.h),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(text: "lbl_top_doctor".tr),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconChevronLeftOnprimary,
          margin: EdgeInsets.only(top: 8.h, right: 23.h, bottom: 16.h),
        ),
      ],
    );
  }

  Widget _buildTopDoctorList() {
    return Expanded(
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.h);
          },
          itemCount:
              controller
                  .topDoctorModeObj
                  .value
                  .topdoctorListItemList
                  .value
                  .length,
          itemBuilder: (context, index) {
            TopdoctorlistItemModel model =
                controller
                    .topDoctorModeObj
                    .value
                    .topdoctorListItemList
                    .value[index];
            return TopdoctorlistItemWidget(model);
          },
        ),
      ),
    );
  }
}
