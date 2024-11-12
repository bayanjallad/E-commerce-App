import 'package:flutter/material.dart';

import '../resources/color.dart';
import '../resources/padding.dart';

class CustomRow extends StatelessWidget {
  final IconData? prefeixIcon;
  final Widget? suffix;
  final String? text;
  final Function()? suffixfunction;
  const CustomRow(
      {super.key, this.prefeixIcon, this.text,  this.suffixfunction, this.suffix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: topAndButtomPadding(0.02, 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(44),
              ),
              child: Icon(prefeixIcon),
            ),
          ),
          Text(
            text!,
            style: const TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: () {
              suffixfunction!;
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: suffix==null?backgroundColor:white,
                borderRadius: BorderRadius.circular(44),
              ),
              child: suffix,
            ),
          ),
        ],
      ),
    );
  }
}
