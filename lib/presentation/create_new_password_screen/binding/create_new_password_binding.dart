import '../../../core/app_export.dart';
import '../controller/create_new_password_controller.dart';

/// A binding class for the CreateNewPasswordScreen.
///
/// This class ensures that the CreateNewPasswordController is created when the
/// CreateNewPasswordScreen is first loaded.
class CreateNewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewPasswordController());
  }
}
