import '../../../core/app_export.dart';
import '../controller/drugs_detail_controller.dart';

/// A binding class for the DrugsDetailScreen.
///
/// This class ensures that the DrugsDetailController is created when the
/// DrugsDetailScreen is first loaded.
class DrugsDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrugsDetailController());
  }
}
