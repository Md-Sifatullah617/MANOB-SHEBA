import '../../../../core/app_export.dart';

/// This class is used in the [healthtracking_item_widget] screen.
class HealthtrackingItemModel {
  HealthtrackingItemModel({
    this.heartRateOne,
    this.heartrate,
    this.bpm,
    this.id,
  }) {
    heartRateOne = heartRateOne ?? Rx(ImageConstant.imgTelevisionWhiteA700);
    heartrate = heartrate ?? Rx("Heart rate");
    bpm = bpm ?? Rx("215bpm");
    id = id ?? Rx("");
  }

  Rx<String>? heartRateOne;
  Rx<String>? heartrate;
  Rx<String>? bpm;
  Rx<String>? id;
}
