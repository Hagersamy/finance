import 'package:finance/core/styling/app_colors.dart';
import 'package:flutter/material.dart';

class PrimaryOutlinedButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? textColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? borderRadious;
  final double? fontSize;
  final VoidCallback? onPressed;

  const PrimaryOutlinedButtonWidget({
    super.key,
    this.buttonText,
    this.borderColor,
    this.width,
    this.height,
    this.borderRadious,
    this.textColor,
    this.onPressed, this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        // backgroundColor: buttonColor ?? AppColors.primaryColor,
        side: BorderSide(
          color: borderColor ?? AppColors.primaryColor,
          width: 2.0,
        ),
        fixedSize: Size(width ?? double.maxFinite, height ?? 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadious ?? 8.0),
        ),

      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontSize: fontSize ?? 16.0,
        ),
      ),
    );
  }
}
