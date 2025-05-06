import '../../../core/app_export.dart';
import '../controller/video_call_controller.dart';

/// A binding class for the VideoCallScreen.
///
/// This class ensures that the VideoCallController is created when the
/// VideoCallScreen is first loaded.
class VideoCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoCallController());
  }
}
