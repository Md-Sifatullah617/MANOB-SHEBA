import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/schedule_controller.dart';
import 'models/schedule_model.dart';
import 'scheduleupcomin_tab_page.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatelessWidget {
  SchedulePage({super.key});

  ScheduleController controller = Get.put(
    ScheduleController(ScheduleModel().obs),
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
            SizedBox(height: 10.h),
            _buildTabSection(),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    ScheduleupcominTabPage(),
                    ScheduleupcominTabPage(),
                    ScheduleupcominTabPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.h,
      title: AppbarTitle(
        text: "lbl_schedule".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 8.h, right: 19.h, bottom: 9.h),
          child: Column(
            children: [
              SizedBox(
                height: 27.h,
                width: 24.h,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 4.h,
                        width: 4.h,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          top: 17.h,
                          bottom: 6.h,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(2.h),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabSection() {
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
                      child: Text("lbl_upcoming".tr),
                    ),
                  ),
                  Tab(
                    height: 46,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text("lbl_completed".tr),
                    ),
                  ),
                  Tab(
                    height: 46,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text("lbl_canceled".tr),
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
}
