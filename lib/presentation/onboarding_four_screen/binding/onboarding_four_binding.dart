import '../../../core/app_export.dart';
import '../controller/onboarding_four_controller.dart';

/// A binding class for the OnboardingFourScreen.
///
/// This class ensures that the OnboardingFourController is created when the
/// OnboardingFourScreen is first loaded.
class OnboardingFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingFourController());
  }
}
