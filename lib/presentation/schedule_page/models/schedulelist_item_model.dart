import '../../../../../core/app_export.dart';

class ScheduleListItemModel {
  ScheduleListItemModel({
    this.drmarcus,
    this.chardiologist,
    this.drmarcus1,
    this.date,
    this.time,
    this.confirmed,
    this.id,
  });

  Rx<String>? drmarcus;
  Rx<String>? chardiologist;
  Rx<String>? drmarcus1;
  Rx<String>? date;
  Rx<String>? time;
  Rx<String>? confirmed;
  Rx<String>? id;
}
