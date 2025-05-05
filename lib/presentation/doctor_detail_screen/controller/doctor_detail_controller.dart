import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../models/doctor_detail_model.dart';

/// A controller class for the DoctorDetailScreen.
///
/// This class manages the state of the DoctorDetailScreen, including the
/// current doctorDetailModelObj
class DoctorDetailController extends GetxController {
  Rx<DoctorDetailModel> doctorDetailModelObj = DoctorDetailModel().obs;

  Rx<DateTime> selectedDatesFromCalendar = DateTime.now().obs;
}
