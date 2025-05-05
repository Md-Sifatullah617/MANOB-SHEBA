import '../../../core/app_export.dart';
import 'popularproduct_item_model.dart';

/// This class defines the variables used in the [pharmacy_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PharmacyModel {
  Rx<List<PopularproductItemModel>> popularproductItemList = Rx([
    PopularproductItemModel(
      bodrexherbal: "Bodrex Herbal".obs,
      measurement: "100ml".obs,
      price: "\$7.99".obs,
      closeOne: ImageConstant.imgCloseWhiteA700.obs,
    ),
    PopularproductItemModel(
      bodrexherbal: "Bodrex Herbal".obs,
      measurement: "100ml".obs,
      price: "\$7.99".obs,
      closeOne: ImageConstant.imgCloseWhiteA700.obs,
    ),
    PopularproductItemModel(
      bodrexherbal: "Bodrex Herbal".obs,
      measurement: "100ml".obs,
      price: "\$7.99".obs,
      closeOne: ImageConstant.imgCloseWhiteA700.obs,
    ),
  ]);
}
