import '../../core/app_export.dart';
import '../controller/reset_password_email_controller.dart';

/// A binding class for the ResetPasswordEmailScreen.
/// This class ensures that the ResetPasswordEmailController is created when the
/// ResetPasswordEmailScreen is first loaded.
class ResetPasswordEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordEmailController());
  }
}
