import 'package:flutter/material.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/App%20Starting%20Screens/Screens/relax_page.dart';

class FocusPage extends StatelessWidget {
  const FocusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryFocusDarkColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kPrimaryFocusDarkColor,
                    kblack,
                    kPrimaryFocusDarkColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: kMqHeight(context) * 0.02,
                children: [
                  Text(
                    'Here, you can focus with music\nthat clears your mind\nand sharpens your thoughts.',
                    textAlign: TextAlign.center,
                    style: kdamThmor(color: kBlueTextColour, fontSize: 17),
                  ),
                  Hero(
                    tag: 'animation',
                    child: SizedBox(
                      height: kMqHeight(context) * 0.59,
                      child: RiveAnimation.asset(
                        'assets/animations/focus_dot.riv',
                      ),
                    ),
                  ),
                  Text(
                    'It\'s built to block out noise and\nkeep your momentum flowing.',
                    textAlign: TextAlign.center,
                    style: kdamThmor(color: kBlueTextColour, fontSize: 17),
                  ),
                  kSbHeight(kMqHeight(context) * 0.03),
                  Hero(
                    tag: 'button',
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 500),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    RelaxPage(),
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
                            colors: [kblack, kPrimaryFocusColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          'Continue',
                          style: inter(color: kBlueTextColour),
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
