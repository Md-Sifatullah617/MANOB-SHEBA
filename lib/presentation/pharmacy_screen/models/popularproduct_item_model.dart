import '../../../core/app_export.dart';

/// This class is used in the [popularproduct_item_widget] screen.
class PopularproductItemModel {
  PopularproductItemModel({
    this.bodrexherbal,
    this.measurement,
    this.price,
    this.closeOne,
    this.id,
  }) {
    bodrexherbal = bodrexherbal ?? Rx("Bodrex Herbal");
    measurement = measurement ?? Rx("100ml");
    price = price ?? Rx("\$7.99");
    closeOne = closeOne ?? Rx(ImageConstant.imgCloseWhiteA700);
    id = id ?? Rx("");
  }

  Rx<String>? bodrexherbal;
  Rx<String>? measurement;
  Rx<String>? price;
  Rx<String>? closeOne;
  Rx<String>? id;
}
