import 'package:flutter/material.dart';
import '../models/chipviewcovidni_item_model.dart';

// ignore_for_file: must_be_immutable
class ChipviewcovidniItemWidget extends StatelessWidget {
  ChipviewcovidniItemWidget(this.chipviewcovidniItemModelObj, {super.key});

  ChipviewcovidniItemModel chipviewcovidniItemModelObj;

  @override
  Widget build(BuildContext context) {
    return RawChip(
        padding: EdgeInsets.all(10),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewcovidniItemModelObj.covidnineteenl.value,
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 14.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: chipviewcovidniItemModelObj.isSelected?.value ?? false,
        backgroundColor: theme.colorScheme.primary.withOpacity(0.3),
        selectedColor: theme.colorScheme.primary,
        side: BorderSide.none,
        shape:
        chipviewcovidniItemModelObj.isSelected?.value ?? false
            ? RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(10.h),
        )
            : RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(10.h),
        ),
        onSelected: (value) {
          chipviewcovidniItemModelObj.isSelected!.value = value;
        });
  }
}

