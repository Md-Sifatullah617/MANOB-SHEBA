import '.../../core/app_export.dart';
import '../controller/my_cart_controller.dart';

/// A binding class for the MyCartScreen.
///
/// This class ensures that the MyCartController is created when the
/// MyCartScreen is first loaded.
class MyCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartController());
  }
}
