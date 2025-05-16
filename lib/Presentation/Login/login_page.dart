import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

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
                      onPressed: () {
                        Navigator.of(context).pop();
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
                        spacing: kMqWidth(context) * 0.05,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 35,
                              width: 35,

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
                          SizedBox(height: 35, width: 35),
                        ],
                      ),
                    ),
                  ),
                  kSizedBoxHeight10,
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
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
