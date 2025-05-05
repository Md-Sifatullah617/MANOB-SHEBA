import '../../../core/app_export.dart';
import '../controller/onboarding_three_controller.dart';

/// A binding class for the OnboardingThreeScreen.
///
/// This class ensures that the OnboardingThreeController is created when the
/// OnboardingThreeScreen is first loaded.
class OnboardingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingThreeController());
  }
}
