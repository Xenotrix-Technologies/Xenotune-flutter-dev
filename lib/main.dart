import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Presentation/Login/login_page.dart';
import 'package:xenotune_flutter_dev/Presentation/App%20Starting%20Screens/Main/starting_section.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Main/onboarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Onboarding());
  }
}
