import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:purchases_flutter/models/package_wrapper.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

class ProductsSection extends StatefulWidget {
  final int intialPage;
  final CarouselSliderController controller;
  final Package product;
  final String yearOrMonth;
  const ProductsSection({
    super.key,
    required this.intialPage,
    required this.controller,
    required this.product,
    required this.yearOrMonth,
  });

  @override
  State<ProductsSection> createState() => _ProductsSectionState();
}

class _ProductsSectionState extends State<ProductsSection> {
  int _initialPage = 0;

  @override
  Widget build(BuildContext context) {
    final pack = widget.product.storeProduct;
    return InkWell(
      onTap: () {
        setState(() {
          _initialPage = widget.intialPage;
        });
        widget.controller.animateToPage(
          _initialPage,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        height: kMqHeight(context) * 0.2,
        width: kMqWidth(context) * 0.45,
        decoration: BoxDecoration(
          border: Border.all(color: kwhite),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              pack.priceString,
              style: lexanGiga(
                color: kwhite,
                fontSize: kMqHeight(context) * 0.035,
              ),
            ),
            Divider(
              color: kwhite,
              indent: kMqWidth(context) * 0.05,
              endIndent: kMqWidth(context) * 0.05,
            ),
            Text(
              widget.yearOrMonth,
              style: inter(color: kwhite, fontSize: kMqHeight(context) * 0.03),
            ),
          ],
        ),
      ),
    );
  }
}
