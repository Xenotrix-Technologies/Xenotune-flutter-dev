import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryBlueDark, kblack, kPrimaryPurpleDark],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            DrawerHeader(
              child: CircleAvatar(radius: 50, backgroundColor: kwhite),
            ),
          ],
        ),
      ),
    );
  }
}
