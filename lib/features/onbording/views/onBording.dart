// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../../../config/responsive.dart';
import '../../../core/resources/color.dart';
import '../../../core/resources/padding.dart';
import '../../../core/resources/string.dart';
import '../../../core/widgets/custom_button.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  PageController _controller = PageController();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _index = value;
                });
              },
              controller: _controller,
              children: [FirstScreen(), SecondScreen(), ThirdScreen()],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(active: _index == 0),
              Padding(
                padding: leftAndRightPadding(0.01, 0.01),
                child: CustomIndicator(active: _index == 1),
              ),
              CustomIndicator(active: _index == 2)
            ],
          ),
          Padding(
            padding: onlyButtomPadding(0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  Hight: screenHight * 0.01,
                  Width: screenWidth * 0.18,
                  Riduse: 75,
                  Elevated: 2,
                  OnPressed: () {},
                  borderSide: primaryColor,
                  color: white,
                  widget: Text(
                    SKIP,
                    style: const TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                CustomButton(
                  Hight: screenHight * 0.01,
                  Width: screenWidth * 0.18,
                  Riduse: 75,
                  Elevated: 1,
                  OnPressed: () {
                    _controller.animateToPage(_index + 1,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.linear);
                  },
                  borderSide: primaryColor,
                  color: primaryColor,
                  widget: Text(NEXT,style: const TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
      width: active ? 30 : 10,
      height: 10,
    );
  }
}
