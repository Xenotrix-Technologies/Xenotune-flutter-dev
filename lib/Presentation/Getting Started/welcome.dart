import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Widgets/Gradient%20Header/gradient_header.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ktransparent,
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
          GradientHeader(
            top: 0,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          Column(
            spacing: kMqHeight(context) * 0.08,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'animation',
                child: Container(
                  height: kMqHeight(context) * 0.45,
                  color: kPrimaryBlueDark.withAlpha(170),
                ),
              ),
              Text(
                'Welcome\nto Xenotune.',
                style: poppins(color: kwhite, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              Hero(
                tag: 'button',
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   PageRouteBuilder(
                    //     transitionDuration: Duration(milliseconds: 500),
                    //     pageBuilder:
                    //         (context, animation, secondaryAnimation) =>
                    //             RelaxPage(),
                    //     transitionsBuilder: (
                    //       context,
                    //       animation,
                    //       secondaryAnimation,
                    //       child,
                    //     ) {
                    //       return FadeTransition(
                    //         opacity: animation,
                    //         child: child,
                    //       );
                    //     },
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Ink(
                    padding: EdgeInsets.symmetric(
                      horizontal: kMqWidth(context) * 0.25,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [kPrimaryPurple, kblack, kPrimaryBlue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      'Let\'s Set the Vibe',
                      style: inter(color: kwhite),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
