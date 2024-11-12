import 'package:e_commerce_app/core/resources/color.dart';
import 'package:flutter/material.dart';

import '../../core/resources/padding.dart';
import '../../core/resources/string.dart';
import '../../core/widgets/custom_textfield.dart';

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _phoneController = TextEditingController();

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(padding:leftAndRightPadding(0.05, 0.05),
        child: Column(
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
                   const  Spacer(),
                  const  Text('Profile',style: TextStyle(color: black,fontSize: 16,fontWeight: FontWeight.bold)),
                   const Spacer(),
                    Padding(
                      padding: topAndButtomPadding(0.02, 0.02),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Padding(
                          padding: onlyLeftPadding(0),
                          child: const Icon(Icons.edit),
                        ),
                      ),
                    )
                  ],
                ),
           const SizedBox(
              height: 130,
            ),
            ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child:const Image(
        image: NetworkImage('https://th.bing.com/th/id/OIP.hGSCbXlcOjL_9mmzerqAbQHaHa?rs=1&pid=ImgDetMain'),
        width:100 ,
        height: 150,
        ),
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
                         Padding(
                  padding: topAndButtomPadding(0.008, 0.03),
                  child: CustomTextField(
                      controller: _phoneController,
                      fillColor: white,
                      hintText: ENTERPHON,
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                      obscureText: false,
                      onTap: () {},
                      prefix: null,
                      suffix: null),
                ),
                       Padding(
                  padding: topAndButtomPadding(0.008, 0.03),
                  child: CustomTextField(
                      controller: _passwordController,
                      fillColor: white,
                      hintText: ENTERPASSWORD,
                      keyboardType: TextInputType.visiblePassword,
                      maxLines: 1,
                      obscureText: false,
                      onTap: () {},
                      prefix: null,
                      suffix: null),
                ),
                       
          ],
        ),
        )),
    );
  }
}