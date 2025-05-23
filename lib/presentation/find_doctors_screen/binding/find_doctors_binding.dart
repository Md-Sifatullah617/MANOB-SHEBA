import '../../../core/app_export.dart';
import '../controller/find_doctors_controller.dart';

/// A binding class for the FindDoctorsScreen.
///
/// This class ensures that the FindDoctorsController is created when the
/// FindDoctorsScreen is first loaded.
class FindDoctorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindDoctorsController());
  }
}
