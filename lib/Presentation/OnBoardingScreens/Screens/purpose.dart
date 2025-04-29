import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class PurposePage extends StatefulWidget {
  final Function()? onBack;
  final PageController controller;
  final int pageNumber;
  const PurposePage({
    super.key,
    this.onBack,
    required this.controller,
    required this.pageNumber,
  });

  @override
  State<PurposePage> createState() => _PurposePageState();
}

class _PurposePageState extends State<PurposePage> {
  String? helpsTo;

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
              spacing: kMqHeight(context) * 0.02,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: kMqWidth(context) * 0.07),
                  child: Text(
                    'What do you want the music\nto help you do?',
                    style: inter(color: kwhite),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      widget.controller.animateToPage(
                        widget.pageNumber,
                        duration: Durations.long1,
                        curve: Curves.easeInOut,
                      );
                      setState(() {
                        helpsTo = 'Concentrate';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: kMqHeight(context) * 0.02,
                      ),
                      height: kMqHeight(context) * 0.10,
                      width: kMqWidth(context) * 0.8,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(23),
                        gradient: LinearGradient(
                          colors: [kConcentrateDart, kConcentrateLight],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Concentrate',
                          style: poppins(color: kwhite, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      widget.controller.animateToPage(
                        widget.pageNumber,
                        duration: Durations.long1,
                        curve: Curves.easeInOut,
                      );
                      setState(() {
                        helpsTo = 'Calm Down';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: kMqHeight(context) * 0.02,
                      ),
                      height: kMqHeight(context) * 0.10,
                      width: kMqWidth(context) * 0.8,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(23),
                        gradient: LinearGradient(
                          colors: [kCalmDownLight, kCalmDownDart],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Calm Down',
                          style: poppins(color: kwhite, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      widget.controller.animateToPage(
                        widget.pageNumber,
                        duration: Durations.long1,
                        curve: Curves.easeInOut,
                      );
                      setState(() {
                        helpsTo = 'Fall Asleep';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: kMqHeight(context) * 0.02,
                      ),
                      height: kMqHeight(context) * 0.10,
                      width: kMqWidth(context) * 0.8,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(23),
                        gradient: LinearGradient(
                          colors: [kFallAsleepDart, kFallAsleepLight],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Fall Asleep',
                          style: poppins(color: kwhite, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      widget.controller.animateToPage(
                        widget.pageNumber,
                        duration: Durations.long1,
                        curve: Curves.easeInOut,
                      );
                      setState(() {
                        helpsTo = 'Get Inspired';
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: kMqHeight(context) * 0.02,
                      ),
                      height: kMqHeight(context) * 0.10,
                      width: kMqWidth(context) * 0.8,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(23),
                        gradient: LinearGradient(
                          colors: [kGetInspiredLight, kGetInspiredDart],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Get Inspired',
                          style: poppins(color: kGrey, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
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
