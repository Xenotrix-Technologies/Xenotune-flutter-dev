import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Getting%20Started/welcome.dart';

class SleepPage extends StatelessWidget {
  const SleepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarySleepDarkColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kPrimarySleepDarkColor,
                    kblack,
                    kPrimarySleepDarkColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: kMqHeight(context) * 0.038,
                children: [
                  Hero(
                    tag: 'animation',
                    child: Container(
                      height: kMqHeight(context) * 0.57,
                      color: kPrimarySleepColor,
                    ),
                  ),
                  Text(
                    'Here, you can drift into sleep as\nthe music gently fades the world away.\nNo distractions, just sound\ndesigned to carry you into dreams.',
                    textAlign: TextAlign.center,
                    style: kosugiMaru(color: kPurpleTextColour, fontSize: 17),
                  ),
                  kSbHeight(kMqHeight(context) * 0.03),
                  Hero(
                    tag: 'button',
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 500),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    WelcomePage(),
                            transitionsBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                              child,
                            ) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                          ),
                          (route) => false,
                        );
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
                            colors: [kblack, kPrimarySleepColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          'Continue',
                          style: inter(color: kPurpleTextColour),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
