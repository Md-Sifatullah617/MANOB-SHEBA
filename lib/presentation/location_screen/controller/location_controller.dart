import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/app_export.dart';
import '../models/location_model.dart';

/// A controller class for the LocationScreen.
///
/// This class manages the state of the LocationScreen, including the
/// current locationModelObj
class LocationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<LocationModel> locationModelObj = LocationModel().obs;

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
