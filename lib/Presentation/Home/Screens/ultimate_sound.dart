import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/icon.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Widgets/sounds.dart';

class SoundsPage extends StatefulWidget {
  const SoundsPage({super.key});

  @override
  State<SoundsPage> createState() => _SoundsPageState();
}

class _SoundsPageState extends State<SoundsPage> {
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
                  SoundsViewWidget(soundIcon: Symbols.waves),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.rainy),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.mode_heat),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.air),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.forest),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.bolt),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.eco),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.raven),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.airwave_sharp),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.snowing), // cicada

                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: CustomIcons.frog), //frog
                  kSizedBoxHeight15,

                  SoundsViewWidget(soundIcon: Symbols.hive),
                  kSizedBoxHeight15,
                  SoundsViewWidget(soundIcon: Symbols.owl),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
