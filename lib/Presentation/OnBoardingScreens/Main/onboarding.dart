import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/feel.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/purpose.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/select_moods.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/time.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/username.dart';
import 'package:xenotune_flutter_dev/Presentation/Widgets/Gradient%20Header/gradient_header.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ktransparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kPrimaryBlueDark, kblack, kPrimaryPurpleDark],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          GradientHeader(
            bottom: 0,
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              UsernamePage(
                onContinue: () {
                  _pageController.animateToPage(
                    1,
                    duration: Durations.long1,
                    curve: Curves.ease,
                  );
                },
              ),
              SelectMood(
                onContinue: () {
                  _pageController.animateToPage(
                    2,
                    duration: Durations.long1,
                    curve: Curves.ease,
                  );
                },
              ),
              TimeSelectPage(
                controller: _pageController,
                pageNumber: 3,
                onBack: () {
                  _pageController.animateToPage(
                    1,
                    duration: Durations.long1,
                    curve: Curves.easeInOut,
                  );
                },
              ),
              PurposePage(
                controller: _pageController,
                pageNumber: 4,
                onBack: () {
                  _pageController.animateToPage(
                    2,
                    duration: Durations.long1,
                    curve: Curves.easeInOut,
                  );
                },
              ),
              FeelPage(
                onBack: () {
                  _pageController.animateToPage(
                    3,
                    duration: Durations.long1,
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
