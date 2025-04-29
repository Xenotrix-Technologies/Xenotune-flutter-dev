import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class TimeSelectPage extends StatefulWidget {
  final Function()? onBack;
  final PageController controller;
  final int pageNumber;
  const TimeSelectPage({
    super.key,
    this.onBack,
    required this.controller,
    required this.pageNumber,
  });

  @override
  State<TimeSelectPage> createState() => _TimeSelectPageState();
}

class _TimeSelectPageState extends State<TimeSelectPage> {
  String? time;

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

              children: [
                Padding(
                  padding: EdgeInsets.only(left: kMqWidth(context) * 0.07),
                  child: Text(
                    'When do you usually listen\nto music like this?',
                    style: inter(color: kwhite),
                  ),
                ),
                Center(
                  child: Container(
                    height: kMqHeight(context) * 0.15,
                    width: kMqWidth(context) * 0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kDay,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.controller.animateToPage(
                            widget.pageNumber,
                            duration: Durations.long1,
                            curve: Curves.easeInOut,
                          );
                          setState(() {
                            time = 'Day';
                          });
                        },
                        icon: Icon(Symbols.clear_day, size: 30, color: kblack),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: kMqHeight(context) * 0.15,
                    width: kMqWidth(context) * 0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kNight,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.controller.animateToPage(
                            widget.pageNumber,
                            duration: Durations.long1,
                            curve: Curves.easeInOut,
                          );
                          setState(() {
                            time = 'Night';
                          });
                        },
                        icon: Icon(
                          Symbols.clear_night,
                          size: 30,
                          color: kwhite,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: kMqHeight(context) * 0.15,
                    width: kMqWidth(context) * 0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kReading,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.controller.animateToPage(
                            widget.pageNumber,
                            duration: Durations.long1,
                            curve: Curves.easeInOut,
                          );
                          setState(() {
                            time = 'Studying';
                          });
                        },
                        icon: Icon(Symbols.book_2, size: 30, color: kblack),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: kMqHeight(context) * 0.15,
                    width: kMqWidth(context) * 0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kSleep,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.controller.animateToPage(
                            widget.pageNumber,
                            duration: Durations.long1,
                            curve: Curves.easeInOut,
                          );
                          setState(() {
                            time = 'Bedtime';
                          });
                        },
                        icon: Icon(Symbols.bed, size: 30, color: kblack),
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
