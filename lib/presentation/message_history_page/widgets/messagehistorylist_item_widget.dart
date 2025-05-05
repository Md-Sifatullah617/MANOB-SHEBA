import 'package:flutter/material.dart';

import '.../../../core/app_export.dart';
import '../controller/message_history_controller.dart';
import '../models/messagehistorylist_item_model.dart';

// ignore_for_file: must_be_immutable
class MessagehistorylistItemWidget extends StatelessWidget {
  MessagehistorylistItemWidget(this.messagehistorylistItemModelObj, {super.key});

  MessagehistorylistItemModel messagehistorylistItemModelObj;

  var controller = Get.find<MessageHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: messagehistorylistItemModelObj.drmarcus!.value,
            height: 50.h,
            width: 46.h,
            radius: BorderRadius.circular(22.h),
            alignment: Alignment.center,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 18.h, bottom: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    messagehistorylistItemModelObj.drmarcus1!.value,
                    style: CustomTextStyles.titleMedium16,
                  ),
                ),
                SizedBox(height: 4.h),
                Obx(
                  () => Text(
                    messagehistorylistItemModelObj.idonthave!.value,
                    style: CustomTextStyles.bodySmallBluegray400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 42.h,
          margin: EdgeInsets.only(left: 8.h, bottom: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(
                () => Text(
                  messagehistorylistItemModelObj.twentyfour!.value,
                  style: CustomTextStyles.bodySmallBluegray700,
                ),
              ),
              SizedBox(height: 4.h),
              Container(
                width: 12.h,
                height: 12.h,
                alignment: Alignment.center,
                decoration: AppDecoration.primary500.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Obx(
                  () => Text(
                    messagehistorylistItemModelObj.group139!.value,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelSmallWhiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
