import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/schedule_model.dart';
import '../models/scheduleupcomin_tab_model.dart';

class ScheduleController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ScheduleController(this.scheduleModelObj);

  Rx<ScheduleModel> scheduleModelObj;

  late TabController tabviewController = Get.put(
    TabController(vsync: this, length: 3),
  );

  Rx<ScheduleupcominTabModel> scheduleupcominTabModelObj =
      ScheduleupcominTabModel().obs;
}
