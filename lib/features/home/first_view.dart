import 'package:flutter/material.dart';

import '../../core/widgets/buttom_nav_bar.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: ButtomNavBar(),
    );
  }
}