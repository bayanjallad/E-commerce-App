// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../resources/color.dart';

class CustomTextField extends StatelessWidget {
  final Widget? prefix;
  final Widget? suffix;
  final String? hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final Function()? onTap;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Color? fillColor;
  const CustomTextField(
      {super.key,
      this.prefix,
      this.suffix,
      this.hintText,
      this.controller,
      this.maxLines,
      this.onTap,
      this.obscureText,
      this.keyboardType,
      this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'filed $hintText should be not empty !';
          }
          return null;
        },
        onSaved: (value) {
          controller!.text = value!;
        },
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        onTap: onTap,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: white,
          prefixIcon: prefix,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: red, width: 0.6, strokeAlign: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: white, width: 0.6, strokeAlign: 2)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: primaryColor, width: 0.6, strokeAlign: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: primaryColor, width: 0.6, strokeAlign: 2)),
        ));
  }
}
