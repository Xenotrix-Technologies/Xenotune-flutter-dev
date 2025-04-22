import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Presentation/Widgets/Onboarding_widgets/onboarding_root.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kPrimaryPurpleDark, kblack, kPrimaryBlueDark],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          OnboardingRoot(),
        ],
      ),
    );
  }
}
