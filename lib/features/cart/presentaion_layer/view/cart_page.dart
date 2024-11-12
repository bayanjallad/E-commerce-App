import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/widgets/custom_row.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
                  text: "MY CART"),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: leftAndRightPadding(0.03, 0.03),
                child: ListView(
                  children: [
                    Container(
                      height: screenHight * 0.6,
                      color: backgroundColor,
                      child: ListView.builder(
                        itemCount: 8,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Nike Club Max"),
                                    const Text("\$64.95"),
                                    Padding(
                                      padding: onlyTopPadding(0.01),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              padding: onlyButtomPadding(3),
                                              width: 31,
                                              height: 31,
                                              decoration: BoxDecoration(
                                                color: white,
                                                borderRadius:
                                                    BorderRadius.circular(44),
                                              ),
                                              child: const Icon(
                                                  Icons.minimize_outlined),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                leftAndRightPadding(0.02, 0.02),
                                            width: 31,
                                            height: 31,
                                            decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(44),
                                            ),
                                            child:
                                                const Center(child: Text("1")),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              width: 31,
                                              height: 31,
                                              decoration: BoxDecoration(
                                                color: primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(44),
                                              ),
                                              child: const Icon(Icons.add,
                                                  color: white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                ],),),
                                Column(
                                  children: [
                                    Padding(
                                      padding: onlyButtomPadding(0.033),
                                      child: const Text("L"),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.delete_outline,
                                        color: red,
                                      ),
                                    )
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
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: white),
                height: screenHight * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: onlyLeftPadding(0.03),
                            child: const Text(
                              "Subtotal",
                              style: TextStyle(
                                  color: gray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                        Padding(
                            padding: onlyRightPadding(0.03),
                            child: const Text("\$1250.00")),
                      ],
                    ),
                    Padding(
                      padding: topAndButtomPadding(0.03, 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: onlyLeftPadding(0.03),
                              child: const Text(
                                "Shopping",
                                style: TextStyle(
                                    color: gray,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )),
                          Padding(
                              padding: onlyRightPadding(0.03),
                              child: const Text("\$1250.00")),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: onlyLeftPadding(0.03),
                            child: const Text(
                              "Total Cost",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                        Padding(
                            padding: onlyRightPadding(0.03),
                            child: const Text(
                              "\$1250.00",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                    Padding(
                      padding: topAndButtomPadding(0.03, 0.03),
                      child: CustomButton(
                        borderSide: primaryColor,
                        Hight: screenHight * 0.07,
                        Riduse: 25,
                        Width: screenWidth * 0.85,
                        Elevated: 2,
                        OnPressed: () {},
                        color: primaryColor,
                        widget: const Text(
                          "Checkout",
                          style: TextStyle(
                              color: white,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
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
