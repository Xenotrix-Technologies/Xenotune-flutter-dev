// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart' show RiveAnimation;

import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Login/login.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Main/onboarding.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                'Tune In',
                style: poppins(color: kwhite, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: kMqWidth(context) * 0.1,
                    ),
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          final userCredential =
                              await LoginRepository().loginUsingGoogle();
                          final user = userCredential.user;
                          if (user != null) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 500),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        Onboarding(),
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
                            log('Username: ${user.displayName}');
                          }
                        } catch (e) {
                          Get.showSnackbar(
                            GetSnackBar(
                              titleText: SizedBox(
                                height: kMqHeight(context) * 0.15,
                                width: double.infinity,
                                child: Center(
                                  child: RiveAnimation.asset(
                                    'assets/animations/no_internet.riv',
                                  ),
                                ),
                              ),
                              messageText: Column(
                                children: [
                                  kSizedBoxHeight10,
                                  Center(
                                    child: Text(
                                      'Failed',
                                      style: lexanGiga(
                                        color: kwhite,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  kSizedBoxHeight10,
                                  Center(
                                    child: Text(
                                      'Something is not right.',
                                      textAlign: TextAlign.center,
                                      style: inter(
                                        color: kwhite,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              snackPosition: SnackPosition.TOP,

                              margin: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: kMqHeight(context) * 0.07,
                              ),
                              borderRadius: 18,
                              duration: Duration(seconds: 2),
                              snackStyle: SnackStyle.FLOATING,
                              backgroundGradient: LinearGradient(
                                colors: [kPrimaryPurple, kblack, kPrimaryBlue],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                          );
                          log('failed to login: $e');
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(kwhite),
                        shadowColor: WidgetStatePropertyAll(kwhite),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 32,
                              width: 32,

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/img/google.png'),
                                ),
                              ),
                            ),
                          ),

                          Text(
                            'Continue with Google',
                            style: inter(color: kblack),
                          ),
                          SizedBox(height: 32, width: 32),
                        ],
                      ),
                    ),
                  ),
                  kSizedBoxHeight10,
                  TextButton(
                    onPressed: () async {
                      await LoginRepository().logout();
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 500),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Onboarding(),
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
                    child: Text('Skip for now', style: inter(color: kwhite)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
