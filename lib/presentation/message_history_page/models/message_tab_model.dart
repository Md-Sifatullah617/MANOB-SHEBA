import '.../../../core/app_export.dart';
import 'messagehistorylist_item_model.dart';

/// This class is used in the [message_history_page] screen.
// ignore_for_file: must_be_immutable
class MessageTabModel {
  RxList<MessagehistorylistItemModel> messagehistorylistItemList = Rx([
    MessagehistorylistItemModel(
      drmarcus: ImageConstant.imgPexelsCedricF50x46.obs,
      drmarcus1: "Dr. Marcus Horizon".obs,
      idonthave: "I don’t have any fever, but headache...".obs,
      twentyfour: "10.24".obs,
      group139: "1".obs,
    ),
    MessagehistorylistItemModel(
      drmarcus: ImageConstant.imgPexelsAnthony50x48.obs,
      drmarcus1: "Dr. Alysa Hana".obs,
      idonthave: "Hello, How can I help you?".obs,
      twentyfour: "09:04".obs,
    ),
    MessagehistorylistItemModel(
      drmarcus: ImageConstant.imgPexelsEvelinaZhu5434019.obs,
      drmarcus1: "Dr. Maria Elena".obs,
      idonthave: "Do you have fever?".obs,
      twentyfour: "08:57".obs,
    ),
  ]);
}
