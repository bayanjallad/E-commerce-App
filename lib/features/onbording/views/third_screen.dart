import 'package:flutter/material.dart';
import '../../../core/resources/color.dart';
import '../../../core/resources/padding.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/onbording3.jpg"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Welcome To Your Online Store",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: topAndButtomPadding(0.025, 0.03),
            child: const Text(
              "you can always shopping here online \nwithout go to shopping \nand west your time",
              style: TextStyle(
                  color: gray, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
