import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../models/reset_password_email_model.dart';
import '../models/resetpassword_tab_model.dart';

/// A controller class for the ResetPasswordEmailScreen.
/// This class manages the state of the ResetPasswordEmailScreen, including the
/// current resetPasswordEmailModelObj
class ResetPasswordEmailController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController emailController = TextEditingController();

  Rx<ResetPasswordEmailModel> resetPasswordEmailModelObj =
      ResetPasswordEmailModel().obs;

  late TabController tabviewController = Get.put(
    TabController(vsync: this, length: 2),
  );

  Rx<ResetpasswordTabModel> resetpasswordTabModelObj =
      ResetpasswordTabModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
