import 'package:e_commerce_app/features/home/drawer_screen.dart';
import 'package:flutter/material.dart';

import '../../config/responsive.dart';
import '../../core/resources/color.dart';
import '../../core/resources/padding.dart';
import '../../core/resources/string.dart';
import '../../core/widgets/custom_button.dart';

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
      key: _scaffoldKey,
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                       _toggleDrawer();
                      } ,
                      child: const Icon(Icons.menu)),
                    const Spacer(),
                    const Text('Salla',style: TextStyle(color: black,fontSize: 16),),
                    const Spacer(),
                    const Icon(Icons.card_travel)
                  ],
                ),
              ),
              Container(
                height: screenHight * 0.28,
                child: Padding(
                        padding: onlyTopPadding(0.02),
                        child: ClipOval(clipBehavior: Clip.antiAlias,child: Image.asset("assets/images/shoes.png")),
                      ),
              ),
             Container(
              height: screenHight * 0.08,
              //color: Colors.amber,
              child:  Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const Text('Best Seller',style: TextStyle(color: Colors.blue,fontSize: 16),),
                    Padding(
                      padding: topAndButtomPadding(0.005, 0.005),
                      child: const Text('Nike Air Jordan ',style: TextStyle(color: black,fontSize: 16),),
                    ),
                     const Text(' 967.800',style: TextStyle(color: black,fontSize: 16),),
                  ],),
                  Spacer(),
                 const Icon(Icons.favorite_border)
                ],
              )),
             Padding(
               padding: topAndButtomPadding(0.008, 0),
               child: const Text('Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....',style: TextStyle(color: gray,fontSize: 16),),
             ),
             Spacer(),
             Padding(
               padding: topAndButtomPadding(0, 0.008),
               child: Row(
                 children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price',style: TextStyle(color: gray,fontSize: 15),),
                      Text('849.69',style: TextStyle(color: black,fontSize: 20,fontWeight: FontWeight.w600))
                    ],
                  ),
                  Spacer(),
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
             )
            ],
          ),

          drawer: DrawerScreen()
    );
  }
}