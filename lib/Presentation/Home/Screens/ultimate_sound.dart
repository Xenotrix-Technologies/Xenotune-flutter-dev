import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/icon.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Widgets/sounds.dart';

class SoundsPage extends StatelessWidget {
  const SoundsPage({super.key});

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
            SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: kMqHeight(context) * 0.05),
                      child: GradientText(
                        'Ultra Sound\nCombination',
                        textAlign: TextAlign.center,
                        colors: [kPrimaryBlue, kPrimaryPurple],
                        gradientDirection: GradientDirection.ttb,
                        style: inter(fontSize: 25),
                      ),
                    ),
                  ),
                  kSizedBoxHeight20,
                  SoundsViewWidget(
                    soundIcon: Symbols.rainy_heavy,
                    path: 'assets/sounds/Heavy_rain.mp3',
                  ),
                  kSizedBoxHeight15,
                  SoundsViewWidget(
                    soundIcon: Symbols.rainy_light,
                    path: 'assets/sounds/Light_rain.mp3',
                  ),
                  kSizedBoxHeight15,
                  SoundsViewWidget(
                    soundIcon: Symbols.air,
                    path: 'assets/sounds/Wind.mp3',
                  ),
                  kSizedBoxHeight15,
                  SoundsViewWidget(
                    soundIcon: Symbols.bolt,
                    path: 'assets/sounds/Thunder.mp3',
                  ),
                  kSizedBoxHeight15,
                  SoundsViewWidget(
                    soundIcon: Symbols.mode_heat,
                    path: 'assets/sounds/Fireplace.mp3',
                  ),
                  kSizedBoxHeight15,
                  SoundsViewWidget(
                    soundIcon: Symbols.waves,
                    path: 'assets/sounds/Wave.mp3',
                  ),
                  kSizedBoxHeight15,

                  SoundsViewWidget(
                    soundIcon: Symbols.water,
                    path: 'assets/sounds/Stream.mp3',
                  ),
                  kSizedBoxHeight15,

                  SoundsViewWidget(
                    soundIcon: Symbols.forest,
                    path: 'assets/sounds/Wood.mp3',
                  ),
                  kSizedBoxHeight15,

                  SoundsViewWidget(
                    soundIcon: Symbols.eco,
                    path: 'assets/sounds/Leaf.mp3',
                  ),
                  kSizedBoxHeight15,
                  SoundsViewWidget(
                    soundIcon: Symbols.raven,
                    path: 'assets/sounds/Birds.mp3',
                  ),
                  kSizedBoxHeight15,

                  SoundsViewWidget(
                    soundIcon: CustomIcons.cicada,
                    path: 'assets/sounds/Cicada.mp3',
                  ), // cicada

                  kSizedBoxHeight15,
                  SoundsViewWidget(
                    soundIcon: CustomIcons.frog,
                    path: 'assets/sounds/Frog.mp3',
                  ), //frog
                  kSizedBoxHeight15,

                  SoundsViewWidget(
                    soundIcon: CustomIcons.bee,
                    path: 'assets/sounds/Bees.mp3',
                  ),
                  kSizedBoxHeight15,
                  SoundsViewWidget(
                    soundIcon: Symbols.owl,
                    path: 'assets/sounds/Bees.mp3',
                  ),
                  kSizedBoxHeight15,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
