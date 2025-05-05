import '../../../core/app_export.dart';
import '../controller/reset_password_verify_code_controller.dart';

/// A binding class for the ResetPasswordVerifyCodeScreen.
/// This class ensures that the ResetPasswordVerifyCodeController is created when the
/// ResetPasswordVerifyCodeScreen is first loaded.
class ResetPasswordVerifyCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordVerifyCodeController());
  }
}
