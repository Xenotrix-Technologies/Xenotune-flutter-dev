import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _initialPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,

        appBar: AppBar(
          foregroundColor: kwhite,

          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          backgroundColor: ktransparent,
          surfaceTintColor: ktransparent,
        ),
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
            SafeArea(
              child: RiveAnimation.asset(
                'assets/animations/particles_drop.riv',
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: kMqHeight(context) * 0.05),
                    child: Center(
                      child: Text(
                        'Your already using Plus\nYour Plus will renew in 29 days',
                        style: inter(color: kwhite, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: kMqHeight(context) * 0.05),
                    child: Center(
                      child: GradientText(
                        'No Distraction.\nJust sound.',
                        style: poppins(fontSize: 18),
                        textAlign: TextAlign.center,
                        colors: [kPrimaryPurple, kPrimaryBlue],
                      ),
                    ),
                  ),
                  SizedBox(height: kMqHeight(context) * 0.07),
                  Padding(
                    padding: EdgeInsets.only(left: kMqWidth(context) * 0.05),
                    child: Text(
                      'Upgrade to Xeno plus \nand enjoy music without distractions',
                      style: inter(color: kwhite, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: kMqHeight(context) * 0.05),
                  Padding(
                    padding: EdgeInsets.only(left: kMqWidth(context) * 0.05),
                    child: Text(
                      '- Remove All Ads\n- Unlimited Hearing\n- One-Time Purchase',
                      style: inter(color: kwhite, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: kMqHeight(context) * 0.05),
                  CarouselSlider(
                    carouselController: _controller,
                    items: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _initialPage = 0;
                          });
                          _controller.animateToPage(
                            _initialPage,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          height: kMqHeight(context) * 0.2,
                          width: kMqWidth(context) * 0.45,
                          decoration: BoxDecoration(
                            border: Border.all(color: kwhite),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '49',
                                style: lexanGiga(
                                  color: kwhite,
                                  fontSize: kMqHeight(context) * 0.08,
                                ),
                              ),
                              Divider(
                                color: kwhite,
                                indent: kMqWidth(context) * 0.05,
                                endIndent: kMqWidth(context) * 0.05,
                              ),
                              Text(
                                'Month',
                                style: inter(
                                  color: kwhite,
                                  fontSize: kMqHeight(context) * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _initialPage = 1;
                          });
                          _controller.animateToPage(
                            _initialPage,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          height: kMqHeight(context) * 0.2,
                          width: kMqWidth(context) * 0.45,
                          decoration: BoxDecoration(
                            border: Border.all(color: kwhite),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '249',
                                style: lexanGiga(
                                  color: kwhite,
                                  fontSize: kMqHeight(context) * 0.08,
                                ),
                              ),
                              Divider(
                                color: kwhite,
                                indent: kMqWidth(context) * 0.05,
                                endIndent: kMqWidth(context) * 0.05,
                              ),
                              Text(
                                'Year',
                                style: inter(
                                  color: kwhite,
                                  fontSize: kMqHeight(context) * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _initialPage = 2;
                          });
                          _controller.animateToPage(
                            _initialPage,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          height: kMqHeight(context) * 0.2,
                          width: kMqWidth(context) * 0.45,
                          decoration: BoxDecoration(
                            border: Border.all(color: kwhite),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '149',
                                style: lexanGiga(
                                  color: kwhite,
                                  fontSize: kMqHeight(context) * 0.08,
                                ),
                              ),
                              Divider(
                                color: kwhite,
                                indent: kMqWidth(context) * 0.05,
                                endIndent: kMqWidth(context) * 0.05,
                              ),
                              Text(
                                '6 Months',
                                style: inter(
                                  color: kwhite,
                                  fontSize: kMqHeight(context) * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      initialPage: _initialPage,
                      autoPlay: false,
                      viewportFraction: 0.47,
                      enlargeCenterPage: true,
                    ),
                  ),
                  SizedBox(height: kMqHeight(context) * 0.12),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
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
                          horizontal: kMqWidth(context) * 0.20,
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
                        child: Text('Upgrade Now', style: inter(color: kwhite)),
                      ),
                    ),
                  ),
                  SizedBox(height: kMqHeight(context) * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
