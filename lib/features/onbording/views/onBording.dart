// ignore: file_names
import 'package:flutter/material.dart';
import '../../../config/responsive.dart';
import '../../../core/resources/color.dart';
import '../../../core/resources/padding.dart';
import '../../../core/resources/string.dart';
import '../../../core/widgets/custom_button.dart';
import '../../authentication/presentation_layer/view/signup.dart';
import '../widgets/customIndec.dart';
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
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: PageView(
              allowImplicitScrolling: false,
              onPageChanged: (value) {
                setState(() {
                  _index = value;
                });
              },
              controller: _controller,
              children: const [FirstScreen(), SecondScreen(), ThirdScreen()],
            ),
          ),
          Padding(
            padding: onlyTopPadding(0.01),
            child: Row(
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
          ),
          Padding(
            padding: topAndButtomPadding(0.045,0.045),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: onlyLeftPadding(0.06),
                  child: CustomButton(
                    Hight: screenHight * 0.06,
                    Width: screenWidth * 0.28,
                    Riduse: 100,
                    Elevated: 2,
                    OnPressed: () {},
                    borderSide: primaryColor,
                    color: white,
                    widget: Text(
                      SKIP,
                      style: const TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: onlyRightPadding(0.045),
                  child: CustomButton(
                     Hight: screenHight * 0.06,
                    Width: screenWidth * 0.28,
                    Riduse: 100,
                    Elevated: 2,
                    OnPressed: () {
                      if (_index == 2) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      } else {
                        _controller.animateToPage(_index + 1,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.linear);
                      }
                    },
                    borderSide: primaryColor,
                    color: primaryColor,
                    widget: Text(
                      NEXT,
                      style: const TextStyle(
                          color:white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
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


