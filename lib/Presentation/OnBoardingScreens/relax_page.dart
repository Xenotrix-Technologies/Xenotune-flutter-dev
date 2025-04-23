import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class RelaxPage extends StatelessWidget {
  final Function() onPressed;
  const RelaxPage({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryRelaxDarkColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kPrimaryRelaxDarkColor,
                    kblack,
                    kPrimaryRelaxDarkColor,
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
                  Container(
                    height: kMqHeight(context) * 0.57,
                    color: kPrimaryRelaxColor,
                  ),
                  Text(
                    'Here, you can relax with sound\nthat slows everything down.\nLet go of tension — this space\nis made for breathing easy.',
                    textAlign: TextAlign.center,
                    style: outfit(color: kGreenTextColour, fontSize: 17),
                  ),
                  kSbHeight(kMqHeight(context) * 0.03),
                  ElevatedButton(
                    onPressed: onPressed,
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
                          colors: [kblack, kPrimaryRelaxColor],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        'Continue',
                        style: inter(color: kGreenTextColour),
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
