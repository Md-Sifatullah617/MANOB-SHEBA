import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'controller/message_history_controller.dart';
import 'models/message_history_model.dart';
import 'models/messagehistorylist_item_model.dart';
import 'widgets/messagehistorylist_item_widget.dart';

// ignore_for_file: must_be_immutable
class MessageTabPage extends StatelessWidget {
  MessageTabPage({super.key});

  MessageHistoryController controller = Get.put(
    MessageHistoryController(MessageHistoryModel().obs),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 32.h),
      child: Column(children: [_buildMessageHistoryList()]),
    );
  }

  /// Section Widget
  Widget _buildMessageHistoryList() {
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
                    .messageTabModeObj
                    .value
                    .messagehistorylistItemList
                    .value
                    .length,
            itemBuilder: (context, index) {
              MessagehistorylistItemModel model =
                  controller
                      .messageTabModeObj
                      .value
                      .messagehistorylistItemList
                      .value[index];
              return MessagehistorylistItemWidget(model);
            },
          ),
        ),
      ),
    );
  }
}
