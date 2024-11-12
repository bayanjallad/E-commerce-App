// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/config/responsive.dart';
import 'package:e_commerce_app/core/resources/padding.dart';
import 'package:e_commerce_app/core/resources/string.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/widgets/custom_row.dart';
import '../../../../core/widgets/custom_textField.dart';



TextEditingController SearchController = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: leftAndRightPadding(0.03, 0.03),
          child: ListView(
            children: [
              CustomRow(
                prefeixIcon: Icons.more_horiz,
                suffix: Icon(Icons.shopping_bag_outlined),
                text: LAZA,
                suffixfunction: () {},
              ),
              CustomTextField(
                fillColor: white,
                hintText: SEARCH,
                onTap: () {},
                suffix: null,
                controller: SearchController,
                keyboardType: TextInputType.emailAddress,
                prefix: Icon(
                  Icons.search,
                  color: black,
                ),
                maxLines: 1,
                obscureText: false,
              ),
              Padding(
                padding: topAndButtomPadding(0.02, 0.03),
                child: SizedBox(
                  height: screenHight * 0.05,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: onlyLeftPadding(0.016),
                        child: Container(
                          width: screenWidth * 0.2,
                          height: screenHight * 0.2,
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor, width: 0.3),
                            color: white,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Center(child: Text("t_shert")),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: leftAndButtomPadding(0.02, 0.02),
                child: Text(POPULARPRODUCTS,
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: screenHight * 0.8,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: screenWidth * 0.04,
                      crossAxisSpacing: screenHight * 0.02,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print("--------------");
                      },
                      child: Container(
                        height: screenHight * 0.7,
                        width: screenWidth * 0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor, width: 0.3),
                          borderRadius: BorderRadius.circular(15),
                          color: white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Image.asset("assets/images/shose.png",
                                    fit: BoxFit.fill, width: 120)),
                            Padding(
                              padding: onlyLeftPadding(0.04),
                              child: const Text("BEST SELLER",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: onlyLeftPadding(0.04),
                              child: Text("Nike Jordan",
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: onlyLeftPadding(0.04),
                                    child: Text("\$493.00",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: black)),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print("+++++++");
                                    },
                                    child: Container(
                                      width: screenWidth * 0.12,
                                      height: screenHight * 0.064,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15)),
                                          color: primaryColor),
                                      child: Icon(Icons.add,
                                          color: white, size: 30),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
