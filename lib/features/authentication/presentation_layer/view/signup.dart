import 'package:flutter/material.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_textfield.dart';
import '../login.dart';


TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey();

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: leftAndRightPadding(0.05, 0.05),
          child: Form(
            key: formKey,
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
                      Text(
                        CREATEACCOUNT,
                        style: const TextStyle(
                            color: black,
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        LETSCREATE,
                        style: const TextStyle(
                          color: gray,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  YOURNAME,
                  style: const TextStyle(
                      color: black, fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Padding(
                  padding: topAndButtomPadding(0.008, 0.03),
                  child: CustomTextField(
                      controller: _nameController,
                      fillColor: white,
                      hintText: ENTERNAME,
                      keyboardType: TextInputType.name,
                      maxLines: 1,
                      obscureText: false,
                      onTap: () {},
                      prefix: null,
                      suffix: null),
                ),
                Text(
                  YOUREMAIL,
                  style: const TextStyle(
                      color: black, fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Padding(
                  padding: topAndButtomPadding(0.008, 0.03),
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
                Text(
                  YOURPASSWORD,
                  style: const TextStyle(
                      color: black, fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Padding(
                  padding: topAndButtomPadding(0.008, 0.023),
                  child: CustomTextField(
                      controller: _passwordController,
                      fillColor: white,
                      hintText: ENTERPASSWORD,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      obscureText: true,
                      onTap: () {},
                      prefix: null,
                      suffix: Icon(Icons.visibility)),
                ),
                Padding(
                  padding: topAndButtomAndLeftAndRightPadding(
                      0.05, 0.001, 0.04, 0.04),
                  child: CustomButton(
                    Hight: screenHight * 0.07,
                    Riduse: 100,
                    Width: screenWidth * 0.89,
                    Elevated: 2,
                    OnPressed: () {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                      formKey.currentState!.save();
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(), ));
                    },
                    borderSide: gray,
                    color: primaryColor,
                    widget: Text(
                      SIGNIN,
                      style: const TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: topAndButtomAndLeftAndRightPadding(
                      0.025, 0.015, 0.04, 0.04),
                  child: CustomButton(
                    Hight: screenHight * 0.071,
                    Riduse: 100,
                    Width: screenWidth * 0.89,
                    Elevated: 2,
                    OnPressed: () {},
                    borderSide: primaryColor,
                    color: white,
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: onlyRightPadding(0.018),
                          child: Image.asset("assets/images/google.png"),
                        ),
                        Text(
                          SIGNINGOOGLE,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: black),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(ALLREADYHAVEACCOUNT),
                    Padding(
                      padding: onlyLeftPadding(0.008),
                      child: InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                      },child: Text(SIGNUP,style: TextStyle(fontWeight: FontWeight.w700),)),

                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
