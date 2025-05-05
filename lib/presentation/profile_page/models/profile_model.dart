import '../../../../core/app_export.dart';
import 'healthtracking_item_model.dart';

/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  Rx<List<HealthtrackingItemModel>> healthtrackingItemList = Rx([
    HealthtrackingItemModel(
      heartRateOne: ImageConstant.imgTelevisionWhiteA700.obs,
      heartrate: "Heart rate".obs,
      bpm: "215bpm".obs,
    ),
    HealthtrackingItemModel(
      heartRateOne: ImageConstant.imgSettingsWhiteA700.obs,
      heartrate: "Calories".obs,
      bpm: "756cal".obs,
    ),
    HealthtrackingItemModel(
      heartRateOne: ImageConstant.imgThumbsUpWhiteA700.obs,
      heartrate: "Weight".obs,
      bpm: "103lbs".obs,
    ),
  ]);
}
