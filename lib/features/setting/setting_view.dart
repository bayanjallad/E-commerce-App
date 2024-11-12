import 'package:e_commerce_app/core/resources/color.dart';
import 'package:flutter/material.dart';

import '../../config/responsive.dart';
import '../../core/resources/constant.dart';
import '../../core/resources/padding.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child:
       Padding(
        padding: leftAndRightPadding(0.05, 0.05),
        child: ListView(
          children: [
            Row(
                  children: [
                    Padding(
                      padding: topAndButtomPadding(0.02, 0.02),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Padding(
                          padding: onlyLeftPadding(0),
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.14),
                   const Text('Account&Settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
   Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Dark mode',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Spacer(),
                      Switch(
                        value: isDark == null || isDark == false ? false : true,
                        onChanged: (value) {
                          isDark = !isDark!;
                          print(isDark.toString());
                          setState(() {});
                        },
                        activeColor: Colors.black,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Language',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Spacer(),
                      Switch(
                        value: isArabic == null || isArabic == false
                            ? false
                            : true,
                        onChanged: (value) {
                          isArabic = !isArabic!;
                          print(isArabic.toString());
                          setState(() {});
                        },
                        activeColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
          ],
        ),
        )),
      
    );
  }
}