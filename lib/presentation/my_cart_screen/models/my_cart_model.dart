import '.../../core/app_export.dart';
import 'durgs_item_model.dart';

/// This class defines the variables used in the [my_cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartModel {
  Rx<List<DurgsItemModel>> durgsItemList = Rx([
    DurgsItemModel(
      obhCombiOne: ImageConstant.imgHealthvitLLys50x50.obs,
      obhcombi: "OBH Combi".obs,
      measurement: "75mL".obs,
      one: "1".obs,
      price: "\$9.99".obs,
    ),
    DurgsItemModel(
      obhCombiOne: ImageConstant.imgCalciumLysin.obs,
      obhcombi: "Panadol".obs,
      measurement: "20pcs".obs,
      one: "2".obs,
      price: "\$15.99".obs,
    ),
  ]);
}
