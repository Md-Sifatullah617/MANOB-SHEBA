import '../../core/app_export.dart';

/// This class is used in the [listcovidninete_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListcovidnineteItemModel {
  ListcovidnineteItemModel({
    this.covidnineteen,
    this.covidnineteen1,
    this.comparingthe,
    this.jun122021,
    this.time,
    this.id,
  }) {
    covidnineteen = covidnineteen ?? Rx(ImageConstant.imgRectangle460);
    covidnineteen1 = covidnineteen1 ?? Rx("Covid-19");
    comparingthe = comparingthe ??
        Rx("Comparing the AstraZeneca and Sinovac COVID-19 Vaccines");
    jun122021 = jun122021 ?? Rx("Jun 12, 2021");
    time = time ?? Rx("6 min read");
    id = id ?? Rx("");
  }

  Rx<String>? covidnineteen;

  Rx<String>? covidnineteen1;

  Rx<String>? comparingthe;

  Rx<String>? jun122021;

  Rx<String>? time;

  Rx<String>? id;
}

