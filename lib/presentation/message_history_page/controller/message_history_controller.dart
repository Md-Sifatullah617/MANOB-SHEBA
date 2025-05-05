import 'package:flutter/material.dart';

import '.../../../core/app_export.dart';
import '../models/message_history_model.dart';
import '../models/message_tab_model.dart';

/// A controller class for the MessageHistoryPage.
/// This class manages the state of the MessageHistoryPage, including the
/// current messageHistoryModelObj and tab view controller.
class MessageHistoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MessageHistoryController(this.messageHistoryModelObj);

  Rx<MessageHistoryModel> messageHistoryModelObj;

  late TabController tabviewController = Get.put(
    TabController(vsync: this, length: 3),
  );

  Rx<MessageTabModel> messageTabModelObj = MessageTabModel().obs;
}
