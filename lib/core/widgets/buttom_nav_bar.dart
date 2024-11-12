import 'package:flutter/material.dart';

import '../../features/cart/presentaion_layer/view/cart_page.dart';
import '../../features/favourite/presentation_layer/view/favourite_page.dart';
import '../../features/home/presentation_layer/view/home_page.dart';
import '../resources/color.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});


  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  List pages=[HomePage(),FavouritePage(),CartPage(),FavouritePage(),CartPage()];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(children: [pages.elementAt(selectedIndex)],) ,
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
          elevation: 3,
          onTap: (value){setState(() {
            selectedIndex=value;
          });},
            selectedItemColor: primaryColor,
            currentIndex: selectedIndex,
            unselectedItemColor: black,
            backgroundColor: white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: "card"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_alert_rounded), label: "Notifcation"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Profile")
            ]),
    
    );
  }
}