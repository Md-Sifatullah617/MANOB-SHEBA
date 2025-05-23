import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/find_doctors_model.dart';

/// A controller class for the FindDoctorsScreen.
///
/// This class manages the state of the FindDoctorsScreen, including the
/// current findDoctorsModelObj
class FindDoctorsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<FindDoctorsModel> findDoctorsModelObj = FindDoctorsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
