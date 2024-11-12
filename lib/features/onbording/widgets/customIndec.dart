// ignore: file_names
import 'package:flutter/material.dart';
import '../../../core/resources/color.dart';

class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: active ? primaryColor : gray),
      width: active ? 32 : 12,
      height: 12,
    );
  }
}