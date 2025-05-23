import '../../core/app_export.dart';

/// This class is used in the [topdoctorList_item_widget] screen.
class TopdoctorListItemModel {
  TopdoctorListItemModel({
    this.drmarcus,
    this.chardiologist,
    this.fortySeven,
    this.distance,
    this.id,
  }) {
    drmarcus = drmarcus ?? Rx("Dr. Marcus Horizon D");
    chardiologist = chardiologist ?? Rx("Chardiologist");
    fortySeven = fortySeven ?? Rx("4.7");
    distance = distance ?? Rx("800m away");
    id = id ?? Rx("");
  }

  Rx<String>? drmarcus;
  Rx<String>? chardiologist;
  Rx<String>? fortySeven;
  Rx<String>? distance;
  Rx<String>? id;
}
