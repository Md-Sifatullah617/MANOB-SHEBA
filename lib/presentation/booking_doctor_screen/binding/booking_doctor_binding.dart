import 'package:manob_seba/core/app_export.dart';
import '../controller/booking_doctor_controller.dart';

/// A binding class for the BookingDoctorScreen.
///
/// This class ensures that the BookingDoctorController is created when the
/// BookingDoctorScreen is first loaded.
class BookingDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingDoctorController());
  }
}
