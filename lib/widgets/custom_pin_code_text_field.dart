import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  final BuildContext context;
  final Function(String) onChanged;
  final Alignment? alignment;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final FormFieldValidator<String>? validator;

  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(key: key);

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? theme.textTheme.headlineSmall!,
        hintStyle: hintStyle ?? theme.textTheme.headlineSmall,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 64,
          fieldWidth: 64,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(16),
          inactiveColor: appTheme.gray500,
          activeColor: theme.colorScheme.primary,
          activeFillColor: appTheme.whiteA700,
          inactiveFillColor: appTheme.whiteA700,
          selectedFillColor: appTheme.whiteA700,
          selectedColor: theme.colorScheme.primary,
        ),
        onChanged: onChanged,
        validator: validator,
      );

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }
}

