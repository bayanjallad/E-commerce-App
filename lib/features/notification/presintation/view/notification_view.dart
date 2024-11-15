import 'package:flutter/material.dart';

import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_row.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Padding(
              padding: leftAndRightPadding(0.03, 0.03),
              child: const CustomRow(
                  prefeixIcon: Icons.arrow_back_ios_new_rounded,
                  suffix: null,
                  suffixfunction: null,
                  text: "Notification"),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: leftAndRightPadding(0.03, 0.03),
                child: ListView(
                  children: [
                    Container(
                      height: screenHight * 0.6,
                      color: backgroundColor,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: onlyButtomPadding(0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(child: Row(children: [Container(
                                  margin: leftAndRightPadding(0.01, 0.04),
                                  height: screenHight * 0.11,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Image.asset("assets/images/shose.png",
                                      fit: BoxFit.fill),
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nike Club Max",style: TextStyle(color: black,fontWeight: FontWeight.w600,fontSize: 17)),
                                    Text("\$64.95",style: TextStyle(color: black,fontWeight: FontWeight.w600)),
                                    
                                  ],
                                ),
                                ],),),
                                Column(
                                  children: [
                                    Padding(
                                      padding: onlyButtomPadding(0.033),
                                      child: const Text("6 m",style: TextStyle(color: primaryColor),),
                                    ),
                                   
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}