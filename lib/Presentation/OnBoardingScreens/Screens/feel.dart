import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Loading/loading.dart';

class FeelPage extends StatefulWidget {
  final Function()? onBack;
  final Future<dynamic>? onTap;
  const FeelPage({super.key, this.onBack, this.onTap});

  @override
  State<FeelPage> createState() => _FeelPageState();
}

class _FeelPageState extends State<FeelPage> {
  String? feel;
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ktransparent,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: kMqHeight(context) * 0.06,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: kMqWidth(context) * 0.07),
                  child: Text(
                    'How do you want it to feel?',
                    style: inter(color: kwhite, fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        box.write('onboarding_first_time', false);
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 500),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    LoadingScreen(),
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
                        setState(() {
                          feel = 'Warm';
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: kMqWidth(context) * 0.06),
                        height: kMqHeight(context) * 0.06,
                        width: kMqWidth(context) * 0.35,
                        decoration: BoxDecoration(
                          color: kWarm,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            'Warm',
                            style: inter(color: kblack, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        box.write('onboarding_first_time', false);
                        setState(() {
                          feel = 'Spacious';
                        });
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 500),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    LoadingScreen(),
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
                      child: Container(
                        margin: EdgeInsets.only(left: kMqWidth(context) * 0.06),
                        height: kMqHeight(context) * 0.06,
                        width: kMqWidth(context) * 0.35,
                        decoration: BoxDecoration(
                          color: kSpacious,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            'Spacious',
                            style: inter(color: kblack, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        box.write('onboarding_first_time', false);
                        setState(() {
                          feel = 'Dreamy';
                        });
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 500),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    LoadingScreen(),
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
                      child: Container(
                        margin: EdgeInsets.only(left: kMqWidth(context) * 0.06),
                        height: kMqHeight(context) * 0.06,
                        width: kMqWidth(context) * 0.35,
                        decoration: BoxDecoration(
                          color: kDreamy,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            'Dreamy',
                            style: inter(color: kblack, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        box.write('onboarding_first_time', false);
                        setState(() {
                          feel = 'Minimal';
                        });
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 500),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    LoadingScreen(),
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
                      child: Container(
                        margin: EdgeInsets.only(left: kMqWidth(context) * 0.06),
                        height: kMqHeight(context) * 0.06,
                        width: kMqWidth(context) * 0.35,
                        decoration: BoxDecoration(
                          color: kMinimal,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            'Minimal',
                            style: inter(color: kblack, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        box.write('onboarding_first_time', false);
                        setState(() {
                          feel = 'Deep';
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 500),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      LoadingScreen(),
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
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: kMqWidth(context) * 0.06),
                        height: kMqHeight(context) * 0.06,
                        width: kMqWidth(context) * 0.35,
                        decoration: BoxDecoration(
                          color: kDeep,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            'Deep',
                            style: inter(color: kwhite, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: kMqHeight(context) * 0.019,
              left: kMqWidth(context) * 0.019,
              child: IconButton(
                onPressed: widget.onBack,
                icon: Icon(Icons.arrow_back_ios_new, color: kPrimaryPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
