import '.../../../core/app_export.dart';

/// This class is used in the [messagehistorylist_item_widget] screen.
// ignore_for_file: must_be_immutable
class MessagehistorylistItemModel {
  MessagehistorylistItemModel({
    this.drmarcus,
    this.drmarcus1,
    this.idonthave,
    this.twentyfour,
    this.group139,
    this.id,
  }) {
    drmarcus = drmarcus ?? Rx(ImageConstant.imgPexelsCedricF50x46);
    drmarcus1 = drmarcus1 ?? Rx("Dr. Marcus Horizon");
    idonthave = idonthave ?? Rx("I don’t have any fever, but headache...");
    twentyfour = twentyfour ?? Rx("10.24");
    group139 = group139 ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? drmarcus;
  Rx<String>? drmarcus1;
  Rx<String>? idonthave;
  Rx<String>? twentyfour;
  Rx<String>? group139;
  Rx<String>? id;
}
