import '../../core/app_export.dart';

/// This class is used in the [doctor_detail_item_widget] screen.
// ignore_for_file: must_be_immutable
class DoctorDetailItemModel {
  DoctorDetailItemModel({this.time, this.id}) {
    time = time ?? Rx("09:00 AM");
    id = id ?? Rx("");
  }

  Rx<String>? time;
  Rx<String>? id;
}
