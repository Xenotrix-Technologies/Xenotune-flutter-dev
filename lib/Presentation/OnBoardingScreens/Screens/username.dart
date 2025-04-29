import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class UsernamePage extends StatelessWidget {
  final Function()? onContinue;
  const UsernamePage({super.key, this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ktransparent,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: kMqHeight(context) * 0.05,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: kMqWidth(context) * 0.07),
                      child: Text(
                        'What do we call you?',
                        style: inter(color: kwhite),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kMqWidth(context) * 0.07,
                      ),
                      child: TextField(
                        showCursor: true,
                        autofocus: true,
                        maxLength: 30,
                        cursorColor: kwhite,

                        decoration: InputDecoration(
                          counterText: ' ',
                          focusColor: kwhite,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: kwhite),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: kwhite),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: onContinue,
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
                            horizontal: kMqWidth(context) * 0.1,
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
                          child: Text('Continue', style: inter(color: kwhite)),
                        ),
                      ),
                    ),
                  ],
                ),
                GradientText(
                  textAlign: TextAlign.center,
                  gradientDirection: GradientDirection.ltr,

                  style: poppins(fontSize: 22, height: 2.5),

                  'Music doesn\'t just fill\nthe silence — it rewrites it.\nOne note can lift a heart, \nslow a breath,\nor calm a storm within.',
                  colors: [kPrimaryPurple, kPrimaryBlue],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
