import 'package:e_commerce_app/features/profile/profile_view.dart';
import 'package:e_commerce_app/features/setting/setting_view.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.blueGrey[300],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
          accountEmail: const Text('eman@gmail.com'), // keep blank text because email is required
          accountName: Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: const CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              child: Icon(
                Icons.check,
              ),
            ),
          ),
        ),
              ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading:const Icon(Icons.notifications_none),
              title:const Text("Notification"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits_rounded),
              title:const Text("Products"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.online_prediction_sharp),
              title:const Text("Orders"),
              onTap: () {},
            ),
             ListTile(
              leading:const Icon(Icons.person_outline),
              title:const Text("Profile"),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileView()));
              },
            ),
             ListTile(
              leading:const Icon(Icons.badge_outlined),
              title: const Text("My Cart"),
              onTap: () {},
            ),
             ListTile(
              leading:const Icon(Icons.settings_outlined),
              title: const Text("Setting"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingView()));
              },
            ),
            ],
          ),
        ),
      );
  }
}