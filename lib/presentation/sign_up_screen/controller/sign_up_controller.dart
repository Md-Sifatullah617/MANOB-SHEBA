import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/sign_up_model.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController nameInputController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> checkbox = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameInputController.dispose();
    emailInputController.dispose();
    passwordInputController.dispose();
  }
}
