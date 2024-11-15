import 'package:e_commerce_app/core/resources/color.dart';
import 'package:flutter/material.dart';

import '../../core/resources/padding.dart';
import 'body_details_view.dart';

class HomePageDetails extends StatelessWidget {
  const HomePageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: 
      Padding(
         padding: leftAndRightPadding(0.05, 0.05),
        child:   BodyDetailsView() ,
      )),
    );
  }
}