import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/App%20Starting%20Screens/focus_page.dart';

class BeginPage extends StatelessWidget {
  const BeginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            Center(
              child: Column(
                children: [
                  Hero(
                    tag: 'animation',
                    child: Container(
                      height: kMqHeight(context) * 0.59,
                      color: kPrimarySleepColor,
                    ),
                  ),
                  kSbHeight(kMqHeight(context) * 0.05),
                  Hero(
                    tag: 'text',
                    child: Text(
                      'You don\'t choose the music.\nThe moment does.',
                      textAlign: TextAlign.center,
                      style: lexanGiga(color: kwhite, fontSize: 17),
                    ),
                  ),
                  kSbHeight(kMqHeight(context) * 0.05),

                  Text(
                    'Welcome to a sound experience\nshaped by how you feel.',
                    textAlign: TextAlign.center,
                    style: inter(color: kwhite, fontSize: 14),
                  ),
                  kSbHeight(kMqHeight(context) * 0.05),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: WidgetStatePropertyAll(
                        Size(kMqWidth(context) * 0.7, 40),
                      ),
                      backgroundColor: WidgetStatePropertyAll(kwhite),
                      surfaceTintColor: WidgetStatePropertyAll(kwhite),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 500),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  FocusPage(),
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

                    child: Text('Tap to Begin', style: inter(color: kblack)),
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
