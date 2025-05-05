import '../../../../../core/app_export.dart';
import 'schedulelist_item_model.dart';

class ScheduleupcominTabModel {
  RxList<ScheduleListItemModel> scheduleListItemList = Rx([
    ScheduleListItemModel(
      drmarcus: Rx("Dr. Marcus Horizon"),
      chardiologist: Rx("Chardiologist"),
      drmarcus1: Rx(ImageConstant.imgPexelsCedricF),
      date: Rx("26/06/2022"),
      time: Rx("10:30 AM"),
      confirmed: Rx("Confirmed"),
    ),
    ScheduleListItemModel(
      drmarcus: Rx("Dr. Alysa Hana"),
      chardiologist: Rx("Psikeater"),
      drmarcus1: Rx(ImageConstant.imgPexelsAnthony),
      date: Rx("28/06/2022"),
      time: Rx("2:00 PM"),
      confirmed: Rx("Confirmed"),
    ),
  ]);
}
