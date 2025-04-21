import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        OnBoardingWidget(
          text: 'Page 1',
          onpressed: () {
            _pageController.animateToPage(
              1,
              duration: Durations.long1,
              curve: Curves.easeInOut,
            );
          },
        ),
        OnBoardingWidget(
          text: 'Page 2',
          onpressed: () {
            _pageController.animateToPage(
              2,
              duration: Durations.long1,
              curve: Curves.easeInOut,
            );
          },
        ),
        OnBoardingWidget(
          text: 'Page 3',
          onpressed: () {
            _pageController.animateToPage(
              3,
              duration: Durations.long1,
              curve: Curves.easeInOut,
            );
          },
        ),
        OnBoardingWidget(
          text: 'Page 4',
          onpressed: () {
            _pageController.animateToPage(
              0,
              duration: Durations.long1,
              curve: Curves.easeInOut,
            );
          },
        ),
      ],
    );
  }
}

class OnBoardingWidget extends StatelessWidget {
  final String text;
  final Function() onpressed;
  const OnBoardingWidget({
    super.key,
    required this.text,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [kPrimaryPurple, kPrimaryBlue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(text, style: TextStyle(color: kwhite, fontSize: 30)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: onpressed, child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
