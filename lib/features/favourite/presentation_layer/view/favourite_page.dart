import 'package:flutter/material.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/widgets/custom_row.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: leftAndRightPadding(0.03, 0.03),
        child: ListView(
          children: [
            CustomRow(
              prefeixIcon: Icons.arrow_back_ios_new_rounded,
              suffix: null,
              suffixfunction: () {},
              text: "Favourite",
            ),
            SizedBox(
              height: screenHight * 1,
              child: GridView.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: screenWidth * 0.04,
                    crossAxisSpacing: screenHight * 0.02,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    foregroundDecoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/shose.png"),
                            alignment: Alignment.topCenter)),
                    height: screenHight * 0.7,
                    width: screenWidth * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 0.3),
                      borderRadius: BorderRadius.circular(15),
                      color: white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
              
                      children: [
                        Padding(
                          padding: topAndleftPadding(0.01,0.02),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                 
                                  borderRadius: BorderRadius.circular(44),
                                ),
                                child: const Icon(Icons.favorite_border),
                              ),
                            ),
                          ),
                        ),
                
                        Padding(
                          padding: topAndleftPadding(0.06,0.04),
                          child: const Text("BEST SELLER",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: onlyLeftPadding(0.04),
                          child: const Text("Nike Jordan",
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: topAndleftPadding(0.01,0.04),
                              child: const Text("\$493.00",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: black)),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
