import '../../core/app_export.dart';
import '../controller/top_doctor_controller.dart';

/// A binding class for the TopDoctorScreen.
///
/// This class ensures that the TopDoctorController is created when the
/// TopDoctorScreen is first loaded.
class TopDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopDoctorController());
  }
}
