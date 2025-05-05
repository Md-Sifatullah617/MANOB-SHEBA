import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/home_initial_model.dart';
import '../models/home_model.dart';

/// A controller class for the HomeScreen.
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  Rx<HomeInitialModel> homeInitialModeObj = HomeInitialModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
