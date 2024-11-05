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
        return 'filed ${hintText} should be not empty !';
      }
      return null;
    },
    onSaved: (value) {
      controller!.text = value!;
    },      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      onTap: onTap,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),),
        suffix: suffix,
        prefix: prefix,
        hintText: hintText,
        hintStyle: TextStyle(color: gray, fontSize: 14),
        filled: true,
        fillColor: fillColor,
      ),
    );
  }
}
