import 'package:flutter/material.dart';
import 'config/responsive.dart';
import 'features/splash_and_onbording/splashscreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    initResponsive(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreenPage(),
    );
  }
}
