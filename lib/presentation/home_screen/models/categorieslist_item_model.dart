import '../../../core/app_export.dart';

/// This Class is used in the [categorieslist_item_widget] screen.
class CategoriesListItemModel {
  CategoriesListItemModel({this.ambulanceOne, this.ambulanceTwo, this.id}) {
    ambulanceOne = ambulanceOne ?? Rx(ImageConstant.imgIconAmbulance);
    ambulanceTwo = ambulanceTwo ?? Rx("Ambulance");
    id = id ?? Rx("");
  }

  Rx<String>? ambulanceOne;
  Rx<String>? ambulanceTwo;
  Rx<String>? id;
}
