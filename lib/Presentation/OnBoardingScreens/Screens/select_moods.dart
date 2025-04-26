import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/OnBoardingScreens/Screens/widgets/float.dart';
import 'package:xenotune_flutter_dev/Presentation/Widgets/Gradient%20Header/gradient_header.dart';

class SelectMood extends StatefulWidget {
  final Function()? onBack;
  final Function()? onContinue;
  const SelectMood({super.key, this.onBack, this.onContinue});

  @override
  State<SelectMood> createState() => _SelectMoodState();
}

class _SelectMoodState extends State<SelectMood> {
  final List<String> moods = [
    "Relax",
    "Anxious",
    "Creative",
    "Sad",
    "Energized",
    "Sleep",
    "Focus",
  ];
  final Set<String> selected = {};

  final List<Color> colors = [
    kRelax,
    kAnxious,
    kCreative,
    kSad,
    kEnergized,
    kSleep,
    kFocus,
  ];
  final List<double> horizontalPaddings = [30, 50, 50, 20, 70, 60, 100];

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
              spacing: kMqHeight(context) * 0.1,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: kMqWidth(context) * 0.07),
                  child: Text(
                    'Hei (username),\nWhat\'s your go-to mood lately?\n(you choose more than one)',
                    style: inter(color: kwhite),
                  ),
                ),
                Center(
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 25,
                    alignment: WrapAlignment.center,
                    children:
                        moods.map((mood) {
                          return FloatingMoodButton(
                            label: mood,
                            isSelected: selected.contains(mood),
                            onTap: () {
                              setState(() {
                                if (selected.contains(mood)) {
                                  selected.remove(mood);
                                } else {
                                  selected.add(mood);
                                }
                              });
                            },
                            colors: colors[moods.indexOf(mood)],
                            horizontalPadding:
                                horizontalPaddings[moods.indexOf(mood)],
                          );
                        }).toList(),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: widget.onContinue,
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
