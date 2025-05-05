import '.../../core/app_export.dart';

/// This class is used in the [durgs_item_widget] screen.
class DurgsItemModel {
  DurgsItemModel({
    this.obhCombiOne,
    this.obhcombi,
    this.measurement,
    this.one,
    this.price,
    this.id,
  }) {
    obhCombiOne = obhCombiOne ?? Rx(ImageConstant.imgHealthvitLLys50x50);
    obhcombi = obhcombi ?? Rx("OBH Combi");
    measurement = measurement ?? Rx("75mL");
    one = one ?? Rx("1");
    price = price ?? Rx("\$9.99");
    id = id ?? Rx("");
  }

  Rx<String>? obhCombiOne;
  Rx<String>? obhcombi;
  Rx<String>? measurement;
  Rx<String>? one;
  Rx<String>? price;
  Rx<String>? id;
}
