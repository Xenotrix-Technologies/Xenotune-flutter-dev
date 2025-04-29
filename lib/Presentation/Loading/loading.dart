import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Text(
              'Loading Text\nBased on user response',
              textAlign: TextAlign.center,
              style: lexanGiga(color: kwhite),
            ),
          ),
        ],
      ),
    );
  }
}
