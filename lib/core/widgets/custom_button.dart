// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? btnOnPressed;
  final double? btnRiduse;
  final double? btnWidth;
  final double? btnHight;
  final Widget? btnWidget;
  final double? btnElevated;
  final Color? btnColor;
  final Color? btnBorderSide;

  const CustomButton({
    super.key,
    this.btnOnPressed,
    this.btnWidget,
    required this.btnRiduse,
    required this.btnWidth,
    required this.btnHight,
    this.btnElevated,
    this.btnColor,
    this.btnBorderSide,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: btnOnPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          elevation: btnElevated,
          fixedSize: Size(btnWidth!, btnHight!),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: btnBorderSide!),
            borderRadius: BorderRadius.circular(btnRiduse!),
          ),
        ),
        child: btnWidget);
  }
}
