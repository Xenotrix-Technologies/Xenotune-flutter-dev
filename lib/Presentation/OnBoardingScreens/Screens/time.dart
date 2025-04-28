import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Widgets/Gradient%20Header/gradient_header.dart';

class TimeSelectPage extends StatefulWidget {
  final Function()? onBack;
  final void onTap;
  const TimeSelectPage({super.key, this.onBack, this.onTap});

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
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [kPrimaryBlueDark, kblack, kPrimaryPurpleDark],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            GradientHeader(
              bottom: 0,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
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
                          widget.onTap;
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
                          widget.onTap;
                          time = 'Night';
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
                          widget.onTap;
                          time = 'Studing';
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
                          widget.onTap;
                          time = 'Bedtime';
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
