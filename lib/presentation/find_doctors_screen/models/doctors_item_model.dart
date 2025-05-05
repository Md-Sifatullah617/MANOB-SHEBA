import '../../../core/app_export.dart';

/// This class is used in the [doctors_item_widget] screen.
class DoctorsItemModel {
  DoctorsItemModel({this.drmarcusOne, this.drmarcus, this.id}) {
    drmarcusOne = drmarcusOne ?? Rx(ImageConstant.imgEllipse8864x64);
    drmarcus = drmarcus ?? Rx("Dr. Marcus");
    id = id ?? Rx("");
  }

  Rx<String>? drmarcusOne;
  Rx<String>? drmarcus;
  Rx<String>? id;
}
