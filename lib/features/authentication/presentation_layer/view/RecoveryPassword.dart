import 'package:e_commerce_app/core/resources/color.dart';
import 'package:e_commerce_app/core/resources/string.dart';
import 'package:flutter/material.dart';

import '../../../../config/responsive.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_textfield.dart';

TextEditingController _emailController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey();

class RexoveryPassword extends StatelessWidget {
  const RexoveryPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: leftAndRightPadding(0.05, 0.05),
          child: Form(
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
                    ],
                  ),
                  Container(
                  height: screenHight * 0.15,
                  child: Column(
                    children: [
                      Padding(
                        padding: topAndButtomPadding(0.002, 0.01),
                        child: Text(
                          RecoveryPASSWORD,
                          style: const TextStyle(
                              color: black,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: leftAndRightPadding(0.05, 0.05),
                        child: Text(
                          VERIFICATION,
                          style: const TextStyle(
                            color: gray,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  YOUREMAIL,
                  style: const TextStyle(
                      color: black, fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Padding(
                  padding: topAndButtomPadding(0.008, 0.008),
                  child: CustomTextField(
                      controller: _emailController,
                      fillColor: white,
                      hintText: ENTEREMAIL,
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,
                      obscureText: false,
                      onTap: () {},
                      prefix: null,
                      suffix: null),
                ),
                                Padding(
                  padding:
                      topAndButtomAndLeftAndRightPadding(0.05, 0.001, 0.04, 0.04),
                  child: CustomButton(
                    Hight: screenHight * 0.07,
                    Riduse: 20,
                    Width: screenWidth * 0.89,
                    Elevated: 2,
                    OnPressed: () {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                      formKey.currentState!.save();
                    },
                    borderSide: gray,
                    color: primaryColor,
                    widget: Text(
                      CONTINUE,
                      style: const TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],

            )
            ),
        )),
    );
  }
}