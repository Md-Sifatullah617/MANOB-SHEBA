import '../../../core/app_export.dart';
import 'doctors_item_model.dart';
import 'find_doctors_item_model.dart';

/// This class defines the variables used in the [find_doctors_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindDoctorsModel {
  Rx<List<FindDoctorsItemModel>> findDoctorsItemList = Rx([
    FindDoctorsItemModel(
      generalOne: ImageConstant.imgIconDoctor.obs,
      generalTwo: "General".obs,
    ),
    FindDoctorsItemModel(
      generalOne: ImageConstant.imgThumbsUpPrimary.obs,
      generalTwo: "Lungs".obs,
    ),
    FindDoctorsItemModel(
      generalOne: ImageConstant.imgIconDentist.obs,
      generalTwo: "Dentist".obs,
    ),
    FindDoctorsItemModel(
      generalOne: ImageConstant.imgIconPsychiatrist.obs,
      generalTwo: "Psychiatrist".obs,
    ),
    FindDoctorsItemModel(
      generalOne: ImageConstant.imgSearch.obs,
      generalTwo: "Covid-19".obs,
    ),
    FindDoctorsItemModel(
      generalOne: ImageConstant.imgMaximize.obs,
      generalTwo: "Surgeon".obs,
    ),
    FindDoctorsItemModel(
      generalOne: ImageConstant.imgIconCardiologist.obs,
      generalTwo: "Cardio".obs,
    ),
  ]);

  Rx<List<DoctorsItemModel>> doctorsItemList = Rx([
    DoctorsItemModel(
      drmarcusOne: ImageConstant.imgEllipse8864x64.obs,
      drmarcus: "Dr. Marcus".obs,
    ),
    DoctorsItemModel(
      drmarcusOne: ImageConstant.imgEllipse881.obs,
      drmarcus: "Dr. Maria".obs,
    ),
    DoctorsItemModel(
      drmarcusOne: ImageConstant.imgRectangle961.obs,
      drmarcus: "Dr. Luke".obs,
    ),
    DoctorsItemModel(
      drmarcusOne: ImageConstant.imgEllipse882.obs,
      drmarcus: "Dr. Stevi".obs,
    ),
  ]);
}
