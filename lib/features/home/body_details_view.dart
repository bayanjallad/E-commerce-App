import 'package:e_commerce_app/features/home/drawer_screen.dart';
import 'package:flutter/material.dart';

import '../../config/responsive.dart';
import '../../core/resources/color.dart';
import '../../core/resources/padding.dart';
import '../../core/resources/string.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/widgets/custom_row.dart';

class BodyDetailsView extends StatefulWidget {
   BodyDetailsView({super.key});

  @override
  State<BodyDetailsView> createState() => _BodyDetailsViewState();
}

class _BodyDetailsViewState extends State<BodyDetailsView> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;
   void _toggleDrawer() {
    if (_isDrawerOpen) {
      _scaffoldKey.currentState?.openEndDrawer();
    } else {
      _scaffoldKey.currentState?.openDrawer();
    }
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: leftAndRightPadding(0.03, 0.03),
        child: SafeArea(
          child: Column(           
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DrawerScreen()));
              },
                child: CustomRow(
                  prefixfunction: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const DrawerScreen()));
                  },
                  prefeixIcon: Icons.more_horiz,
                  suffix: Icon(Icons.shopping_bag_outlined),
                  text: LAZA,
                  suffixfunction: () {},
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/shose.png",
                     fit: BoxFit.fill,
                       height: screenHight * 0.35   
                      )),
              const Text("BEST SELLER",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              Padding(
              padding:topAndButtomPadding(0.005, 0.005) ,
                child: const Text("Nike Air Jordan",
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
              ),
                      const Text('Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....',style: TextStyle(color: gray,fontSize: 16),),
              Spacer(),
             Padding(
               padding: topAndButtomPadding(0, 0.04),
               child: Row(
                 children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price',style: TextStyle(color: gray,fontSize: 15),),
                      Text("\$493.00",style: TextStyle(color: black,fontSize: 20,fontWeight: FontWeight.w600))
                    ],
                  ),
                  const Spacer(),
                   CustomButton(
                            Hight: screenHight * 0.05,
                            Riduse: 20,
                            Width: screenWidth * 0.4,
                            Elevated: 2,
                            OnPressed: () {
                            
                            },
                            borderSide: gray,
                            color: primaryColor,
                            widget: Text(
                              ADDTOCART,
                              style: const TextStyle(
                                  color: white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                 ],
               ),
             ),
             
            ],
          ),
        ),
      ),
    );
  }
}