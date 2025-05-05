import '../../core/app_export.dart';
import 'doctor_detail_item_model.dart';

/// This class defines the variables used in the [doctor_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class DoctorDetailModel {
  Rx<List<DoctorDetailItemModel>> doctorDetailItemList = Rx([
    DoctorDetailItemModel(time: "09:00 AM".obs),
    DoctorDetailItemModel(time: "10:00 AM".obs),
    DoctorDetailItemModel(time: "11:00 AM".obs),
    DoctorDetailItemModel(time: "01:00 PM".obs),
    DoctorDetailItemModel(time: "02:00 PM".obs),
    DoctorDetailItemModel(time: "03:00 PM".obs),
    DoctorDetailItemModel(time: "04:00 PM".obs),
    DoctorDetailItemModel(time: "07:00 PM".obs),
    DoctorDetailItemModel(time: "08:00 PM".obs),
  ]);
}
