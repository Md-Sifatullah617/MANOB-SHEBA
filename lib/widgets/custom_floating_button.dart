import 'package:flutter/material.dart';
import 'package:manob_seba/core/app_export.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({
    Key? key,
    this.alignment,
    this.backgroundColor,
    this.onTap,
    this.shape,
    this.width,
    this.height,
    this.decoration,
    this.child,
  }) : super(key: key);

  final Alignment? alignment;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final BoxShape? shape;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final Widget? child;

  Widget get fabWidget => FloatingActionButton(
        backgroundColor: backgroundColor,
        onPressed: onTap,
        shape: shape ??
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(height ?? 26.h)),
        child: Container(
          alignment: Alignment.center,
          width: width ?? 0,
          height: height ?? 0,
          decoration: decoration ??
              BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(height ?? 26.h),
              ),
          child: child,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: fabWidget,
          )
        : fabWidget;
  }
}

