import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'controller/schedule_controller.dart';
import 'models/schedule_list_item_model.dart';
import 'models/schedule_model.dart';
import 'models/scheduleupcomin_tab_model.dart';
import 'widgets/schedule_list_item_widget.dart';

// ignore_for_file: must_be_immutable
class ScheduleupcominTabPage extends StatelessWidget {
  ScheduleupcominTabPage({super.key});

  ScheduleController controller = Get.put(
    ScheduleController(ScheduleModel().obs),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 32.h),
      child: Column(children: [_buildScheduleList()]),
    );
  }

  /// Section Widget
  Widget _buildScheduleList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.h);
            },
            itemCount:
                controller
                    .scheduleupcominTabModelObj
                    .value
                    .scheduleListItemList
                    .value
                    .length,
            itemBuilder: (context, index) {
              ScheduleListItemModel model =
                  controller
                      .scheduleupcominTabModelObj
                      .value
                      .scheduleListItemList
                      .value[index];
              return ScheduleListItemWidget(model);
            },
          ),
        ),
      ),
    );
  }
}
