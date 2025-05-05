import '../../../../core/app_export.dart';
import 'doctor_item_model.dart';

/// This class is used in the [home_initial_page] screen.
// ignore_for_file: must_be_immutable
class HomeInitialModel {
  Rx<List<CategorieslistItemModel>> categorieslistItemList = Rx([
    CategorieslistItemModel(
      ambulanceOne: ImageConstant.imgIconAmbulance.obs,
      ambulanceTwo: "Ambulance".obs,
    ),
    CategorieslistItemModel(
      ambulanceOne: ImageConstant.imgIconDoctor.obs,
      ambulanceTwo: "Doctor".obs,
    ),
    CategorieslistItemModel(
      ambulanceOne: ImageConstant.imgIconPharmacy.obs,
      ambulanceTwo: "Pharmacy".obs,
    ),
    CategorieslistItemModel(
      ambulanceOne: ImageConstant.imgIconHospital.obs,
      ambulanceTwo: "Hospital".obs,
    ),
  ]);

  Rx<List<DoctorItemModel>> doctorItemList = Rx([
    DoctorItemModel(
      fortySeven: "4.7".obs,
      drmarcus: "Dr. Marcus Horizon".obs,
      chardiologist: "Chardiologist".obs,
      distance: "800m away".obs,
    ),
    DoctorItemModel(
      fortySeven: "4.7".obs,
      drmarcus: "Dr. Marcus Horizon".obs,
      chardiologist: "Chardiologist".obs,
      distance: "800m away".obs,
    ),
    DoctorItemModel(
      fortySeven: "4.7".obs,
      drmarcus: "Dr. Marcus Horizon".obs,
      chardiologist: "Chardiologist".obs,
      distance: "800m away".obs,
    ),
    DoctorItemModel(
      fortySeven: "4.7".obs,
      drmarcus: "Dr. Marcus Horizon".obs,
      chardiologist: "Chardiologist".obs,
      distance: "800m away".obs,
    ),
  ]);
}
