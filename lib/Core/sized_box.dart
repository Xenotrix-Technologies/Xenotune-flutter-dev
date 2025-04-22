import 'package:flutter/material.dart';

final kSizedBoxHeight5 = SizedBox(height: 5);
final kSizedBoxHeight10 = SizedBox(height: 10);
final kSizedBoxHeight15 = SizedBox(height: 15);
final kSizedBoxHeight20 = SizedBox(height: 20);
final kSizedBoxHeight25 = SizedBox(height: 25);
final kSizedBoxHeight30 = SizedBox(height: 30);
final kSizedBoxHeight40 = SizedBox(height: 40);
final kSizedBoxHeight50 = SizedBox(height: 50);

final kSizedBoxWidth5 = SizedBox(width: 5);
final kSizedBoxWidth10 = SizedBox(width: 10);
final kSizedBoxWidth15 = SizedBox(width: 15);
final kSizedBoxWidth20 = SizedBox(width: 20);
final kSizedBoxWidth25 = SizedBox(width: 25);
final kSizedBoxWidth30 = SizedBox(width: 30);
final kSizedBoxWidth40 = SizedBox(width: 40);
final kSizedBoxWidth50 = SizedBox(width: 50);

double kMqHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double kMqWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

kSbHeight(double height) {
  return SizedBox(height: height);
}

kSbWidth(double width) {
  return SizedBox(width: width);
}
