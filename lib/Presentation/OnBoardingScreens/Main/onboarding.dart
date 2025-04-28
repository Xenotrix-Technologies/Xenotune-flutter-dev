import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/purpose.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/select_moods.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/time.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/username.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          children: [PurposePage()],
        ),
      ),
    );
  }
}
