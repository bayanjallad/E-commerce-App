import 'package:flutter/material.dart';
import '../../../core/resources/color.dart';
import '../../../core/resources/padding.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding: onlyTopPadding(0.2),
          child: ClipOval(clipBehavior: Clip.antiAlias,child: Image.asset("assets/images/onbording1.jpg")),
        ),
        Padding(
          padding: onlyTopPadding(0.02),
          child: Text("Welcom To our shopping"),
        ),
        Padding(
          padding: onlyTopPadding(0.02),
          child: Text(
            "  you can always shopping here\n online without go to shopping \n  and west your time",
            style: TextStyle(color: gray),
          ),
        ),
      ],
    );
  }
}