import '../../../core/app_export.dart';

/// This class is used in the [find_doctors_item_widget] screen.
class FindDoctorsItemModel {
  FindDoctorsItemModel({this.generalOne, this.generalTwo, this.id}) {
    generalOne = generalOne ?? Rx(ImageConstant.imgIconDoctor);
    generalTwo = generalTwo ?? Rx("General");
    id = id ?? Rx("");
  }

  Rx<String>? generalOne;
  Rx<String>? generalTwo;
  Rx<String>? id;
}
