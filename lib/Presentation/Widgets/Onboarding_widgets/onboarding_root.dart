import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/begin_page.dart';

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
      body: SafeArea(child: PageView(children: [BeginPage()])),
    );
  }
}
