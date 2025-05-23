import 'package:flutter/material.dart';

import '.../../core/app_export.dart';
import '../models/my_cart_model.dart';

/// A controller class for the MyCartScreen.
///
/// This class manages the state of the MyCartScreen, including the
/// current myCartModeObj
class MyCartController extends GetxController {
  Rx<MyCartModel> myCartModelObj = MyCartModel().obs;
}
