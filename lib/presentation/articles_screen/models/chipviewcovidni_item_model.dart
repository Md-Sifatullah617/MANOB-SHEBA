import '../../core/app_export.dart';

/// This class is used in the [chipviewcovidni_item_widget] screen.

// ignore_for_file: must_be_immutable
class ChipviewcovidniItemModel {
  ChipviewcovidniItemModel({this.covidnineteen, this.isSelected}) {
    covidnineteen = covidnineteen ?? Rx("Covid-19");
    isSelected = isSelected ?? Rx(false);
  }

  Rx<String>? covidnineteen;

  Rx<bool>? isSelected;
}

