import 'package:e_commerce_app/core/resources/color.dart';
import 'package:flutter/material.dart';

import '../../config/responsive.dart';
import '../../core/resources/padding.dart';
import '../../core/resources/string.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/widgets/custom_textfield.dart';
import 'body_details_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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