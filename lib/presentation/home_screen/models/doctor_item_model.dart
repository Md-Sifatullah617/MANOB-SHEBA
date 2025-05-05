import '../../../core/app_export.dart';

/// This Class is used in the [doctor_item_widget] screen.
class DoctorItemModel {
  DoctorItemModel({
    this.fortySeven,
    this.drmarcus,
    this.chardiologist,
    this.distance,
    this.id,
  }) {
    fortySeven = fortySeven ?? Rx("4.7");
    drmarcus = drmarcus ?? Rx("Dr. Marcus Horizon");
    chardiologist = chardiologist ?? Rx("Chardiologist");
    distance = distance ?? Rx("800m away");
    id = id ?? Rx("");
  }

  Rx<String>? fortySeven;
  Rx<String>? drmarcus;
  Rx<String>? chardiologist;
  Rx<String>? distance;
  Rx<String>? id;
}
