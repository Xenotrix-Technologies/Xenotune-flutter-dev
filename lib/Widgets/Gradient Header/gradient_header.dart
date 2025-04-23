import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class GradientHeader extends StatelessWidget {
  final double? top;
  final double? bottom;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  const GradientHeader({
    super.key,
    this.top,
    this.bottom,
    required this.begin,
    required this.end,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: top,
          bottom: bottom,
          child: Container(
            height: kMqHeight(context) * 0.15,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kPrimaryPurple, kPrimaryBlue],
                begin: begin,
                end: end,
              ),
            ),
          ),
        ),
        Positioned(
          top: top,
          bottom: bottom,
          left: 0,
          right: 0,
          child: ClipRect(
            clipBehavior: Clip.none,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
              child: Container(),
            ),
          ),
        ),
      ],
    );
  }
}
