import 'package:flutter/material.dart';
import 'package:navigate/screens/home_screen.dart';
import 'package:navigate/screens/main_screen.dart';
import 'package:navigate/screens/splash_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
