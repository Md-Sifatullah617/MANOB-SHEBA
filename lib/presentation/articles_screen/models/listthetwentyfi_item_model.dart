import '../../core/app_export.dart';

/// This class is used in the [listthetwentyfi_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListthetwentyfiItemModel {
  ListthetwentyfiItemModel({
    this.image,
    this.thetwentyfive,
    this.jun102021,
    this.time,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgUnsplash86rvjm9zowy);
    thetwentyfive = thetwentyfive ??
        Rx("The 25 Healthiest Fruits You Can Eat, According to a Nutritionist");
    jun102021 = jun102021 ?? Rx("Jun 10, 2021 ");
    time = time ?? Rx("5min read");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? thetwentyfive;

  Rx<String>? jun102021;

  Rx<String>? time;

  Rx<String>? id;
}

