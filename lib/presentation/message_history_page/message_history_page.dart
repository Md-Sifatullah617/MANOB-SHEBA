import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import 'controller/message_history_controller.dart';
import 'message_tab_page.dart';
import 'models/message_history_model.dart';

// ignore_for_file: must_be_immutable
class MessageHistoryPage extends StatelessWidget {
  MessageHistoryPage({super.key});

  MessageHistoryController controller = Get.put(
    MessageHistoryController(MessageHistoryModel().obs),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 12.h),
            _buildTabView(),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MessageTabPage(),
                    MessageTabPage(),
                    MessageTabPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 52.h,
      title: AppbarTitle(
        text: "lbl_message".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        Container(
          height: 33.h,
          width: 24.h,
          margin: EdgeInsets.only(top: 8.h, right: 19.h, bottom: 11.h),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgComponent1,
                height: 16.h,
                width: 4.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(left: 20.h, top: 17.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRewindOnprimary,
                height: 24.h,
                width: 24.h,
                margin: EdgeInsets.only(bottom: 9.h),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabView() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 14.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6.h),
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(8.h),
            ),
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.h),
              child: TabBar(
                controller: controller.tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.whiteA700,
                labelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: theme.colorScheme.onPrimary,
                unselectedLabelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                dividerHeight: 0.0,
                tabs: [
                  Tab(
                    height: 46,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text("lbl_all".tr),
                    ),
                  ),
                  Tab(
                    height: 46,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text("lbl_group".tr),
                    ),
                  ),
                  Tab(
                    height: 46,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text("lbl_private".tr),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 54,
      width: 54,
      backgroundColor: theme.colorScheme.primary,
      child: CustomImageView(
        imagePath: ImageConstant.imgUserWhiteA700,
        height: 27.0.h,
        width: 27.0.h,
      ),
    );
  }
}
