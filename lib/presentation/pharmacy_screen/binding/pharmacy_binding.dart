import '../../../core/app_export.dart';
import '../controller/pharmacy_controller.dart';

/// A binding class for the PharmacyScreen.
///
/// This class ensures that the PharmacyController is created when the
/// PharmacyScreen is first loaded.
class PharmacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PharmacyController());
  }
}
