import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/begin_page.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/focus_page.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/relax_page.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/sleep_page.dart';

class OnboardingRoot extends StatefulWidget {
  const OnboardingRoot({super.key});

  @override
  State<OnboardingRoot> createState() => _OnboardingRootState();
}

class _OnboardingRootState extends State<OnboardingRoot> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ktransparent,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          BeginPage(
            onPressed: () {
              _pageController.animateToPage(
                1,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
          ),
          FocusPage(
            onPressed: () {
              _pageController.animateToPage(
                2,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
          ),
          RelaxPage(
            onPressed: () {
              _pageController.animateToPage(
                3,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
          ),
          SleepPage(
            onPressed: () {
              _pageController.animateToPage(
                0,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
          ),
        ],
      ),
    );
  }
}
