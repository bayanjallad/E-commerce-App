// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? OnPressed;
  final double? Riduse;
  final double? Width;
  final double? Hight;
  final Widget? widget;
  final double? Elevated;
  final Color? color;
  final Color? borderSide;

  const CustomButton({
    super.key,
    this.OnPressed,
    this.widget,
    required this.Riduse,
    required this.Width,
    required this.Hight,
    this.Elevated,
    this.color,
    this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: OnPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: Elevated,
          fixedSize: Size(Width!, Hight!),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderSide!),
            borderRadius: BorderRadius.circular(Riduse!),
          ),
        ),
        child: widget);
  }
}
