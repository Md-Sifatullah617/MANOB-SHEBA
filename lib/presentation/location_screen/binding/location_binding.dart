import '../../../core/app_export.dart';
import '../controller/location_controller.dart';

/// A binding class for the LocationScreen.
///
/// This class ensures that the LocationController is created when the
/// LocationScreen is first loaded.
class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationController());
  }
}
